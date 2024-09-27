
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../Constants.dart';
import '../../Models/note_model.dart';
import 'notes_States.dart';

class NotesCubit extends Cubit<NoteStates>
{
  NotesCubit() : super(NotesInitial());

   fetchAllNotes()async
   {
     try{
        var NotesBox=Hive.box<NoteModel>(KNotesBox);
        //NotesBox.values.toList() not future so not need emit(NotesLoading)
        emit(NotesSuccess(NotesBox.values.toList()));

     }catch(e)
     {
       emit(NotesFailure(e.toString()));
     }

   }

}