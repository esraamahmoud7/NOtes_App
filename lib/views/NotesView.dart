import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/Constants.dart';
import 'package:notesapp/cubits/notes_cubit/notesCubit.dart';

import '../widgets/NotesVIewBody.dart';
import '../widgets/add_Note_Button.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton
          (
          backgroundColor: KPrimaryColor,
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)
                ),
                context: context,
                builder: (context) {
                  return AddNoteButtonSheet();
                }
            );
          },
          child: Icon(Icons.add),
        ),
        body: const NotesViewBody(),
      ),
    );
  }
}


