import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:notesapp/Models/note_model.dart';
import 'package:notesapp/Constants.dart';

import 'add_notes_states.dart';



class AddNoteCubit extends Cubit<AddNoteStates>
{
  AddNoteCubit() : super(AddNotesInitial());

  AddNote(NoteModel Note)async
  {
    emit(AddNotesLoading());
    try{
      var NotesBox=Hive.box<NoteModel>(KNotesBox);
      // add accepts dynamic so will accept all things but will throw exception if not register
      await NotesBox.add(Note);
      emit(AddNotesSuccess());

    }
    catch(e){
      emit(AddNotesFailure(e.toString()));
    }

  }

}
