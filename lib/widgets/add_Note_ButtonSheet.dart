import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/add_note_cubit/Add_Notes_Cubit.dart';
import 'package:notesapp/cubits/add_note_cubit/add_notes_states.dart';
import 'package:notesapp/cubits/notes_cubit/notesCubit.dart';

import 'add_note_form.dart';

class AddNoteButtonSheet extends StatefulWidget {
  const AddNoteButtonSheet({super.key});

  @override
  State<AddNoteButtonSheet> createState() => _AddNoteButtonSheetState();
}

class _AddNoteButtonSheetState extends State<AddNoteButtonSheet> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteStates>(
          listener: (context, state) {
            if (state is AddNotesLoading) {
              isLoading = true;
            }
            else if (state is AddNotesFailure) {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("${state.errorMessage} , try again!!")),);
            }
            else if (state is AddNotesSuccess) {
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddNotesLoading ? true : false,
              child:  Padding(
                    padding: EdgeInsets.only
                      (
                         left: 16.0,
                         right: 16,
                         bottom:MediaQuery.of(context).viewInsets.bottom,),
                    child: SingleChildScrollView(
                        child: AddNoteForm()),
              ),
            );
          },
        ),
    );
  }
}
