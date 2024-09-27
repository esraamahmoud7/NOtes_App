
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../Constants.dart';
import '../../Models/note_model.dart';
import 'notes_States.dart';

class NotesCubit extends Cubit<NoteStates>
{
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes;

   fetchAllNotes()async
   {
        var NotesBox=Hive.box<NoteModel>(KNotesBox);
        //NotesBox.values.toList() not future so not need emit(NotesLoading)
        notes=NotesBox.values.toList();
   }



}