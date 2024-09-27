

import 'package:flutter/cupertino.dart';
import 'package:notesapp/Models/note_model.dart';

@immutable
abstract class NoteStates {}

class NotesInitial extends NoteStates {}
class NotesLoading extends NoteStates {}
class NotesSuccess extends NoteStates {
  //create list here because it list will used in one place
  List<NoteModel> notes;

  NotesSuccess(this.notes);
}
class NotesFailure extends NoteStates {
  final String errorMessage;
  NotesFailure(this.errorMessage);
}