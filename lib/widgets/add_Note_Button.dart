import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/add_note_cubit/Add_Notes_Cubit.dart';
import 'package:notesapp/cubits/add_note_cubit/add_notes_states.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
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
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
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
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD
              (
                inAsyncCall: isLoading,
                child: SingleChildScrollView(
                    child: AddNoteForm())
            );
          },
        ),
      ),
    );
  }
}
