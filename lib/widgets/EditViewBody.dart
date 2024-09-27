import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit/notesCubit.dart';
import 'package:notesapp/widgets/Custom_Text_Field.dart';

import '../Models/note_model.dart';
import 'App_Bar.dart';
class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  // make it stateful because we can receive at least zero
   String? title,subTitle ;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column
        (
        children:[
          const SizedBox(height: 50,),
          Custom_App_Bar(onPressed:(){
            widget.note.title = title ?? widget.note.title;
            widget.note.subTitle = subTitle ?? widget.note.subTitle;
            widget.note.save();
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          } ,appBar: "Edit Note",icon:Icons.check,),
          const SizedBox(height: 32,),
          CustomText(hint: widget.note.title,onChanged: (value){title = value;},),
          const SizedBox(height: 16,),
          CustomText(hint: widget.note.subTitle,maxLine: 5,onChanged: (value){subTitle=value;},),
        ],
      ),
    );
  }
}
