import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:last_project/cubits/add_note_cubit.dart';
import 'package:last_project/cubits/add_notes_states.dart';
import 'package:last_project/models/note_model.dart';
import 'package:last_project/widgets/colors_list_view.dart';
import 'package:last_project/widgets/custom_button.dart';
import 'package:last_project/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  final GlobalKey<FormState> formKey = GlobalKey();

  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 32),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: 'title',
            maxLines: 1,
          ),
          SizedBox(height: 16),
          CustomTextField(
            hint: 'content',
            onSaved: (value) {
              subTitle = value;

            },

            maxLines: 5,
          ),
          SizedBox(
            height: 32,
          ),

          ColorsListView(),
          const SizedBox(height: 32),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading? true :false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var currentDate = DateTime.now();
                    var formattedCurrentDate= DateFormat.yMd().format(currentDate);
                    var noteModel = NoteModel(
                      date:formattedCurrentDate ,
                      color: Colors.blue.value,
                      subTitle: subTitle!,
                      title: title!,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
