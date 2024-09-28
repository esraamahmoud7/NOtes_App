import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notesapp/cubits/add_note_cubit/Add_Notes_Cubit.dart';

import '../Models/note_model.dart';
import '../cubits/add_note_cubit/add_notes_states.dart';
import 'ColorsWidget.dart';
import 'CustomButton.dart';
import 'Custom_Text_Field.dart';


class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {

  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title, subTitle;


  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          const SizedBox(height: 32,),
          CustomText(hint: "Title", onSaved: (value) {
            title = value;
          },),
          const SizedBox(height: 16,),
          CustomText(hint: "Content", onSaved: (value) {
            subTitle = value;
          }, maxLine: 5,),
          SizedBox(height: 15,),
          ColorListView(),
          const SizedBox(height: 20,),
          BlocBuilder<AddNoteCubit, AddNoteStates>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNotesLoading? true : false,
                OnTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();

                    var currentDate=DateTime.now();
                    var formattedCurrentDate=DateFormat('MMMM d, y').format(currentDate);
                    var noteModel = NoteModel(title: title!,
                        subTitle: subTitle!,
                        date: formattedCurrentDate,
                        color: Colors.blueGrey.value);
                    BlocProvider.of<AddNoteCubit>(context).AddNote(noteModel);
                  }
                  else {
                    autoValidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(height: 32,)
        ],
      ),
    );
  }
}