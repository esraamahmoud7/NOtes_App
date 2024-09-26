import 'package:flutter/material.dart';
import 'package:notesapp/Constants.dart';

import '../widgets/NotesVIewBody.dart';
import '../widgets/add_Note_Button.dart';
class NotesView extends StatelessWidget {
  const NotesView ({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton
        (
        backgroundColor: KPrimaryColor,
        onPressed: (){
          showModalBottomSheet(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)
          ),    
          context: context, 
          builder: (context)
          {
            return AddNoteButtonSheet();
          }
          );
        },
        child: Icon(Icons.add),
      ),
      body: const NotesViewBody() ,
    );
  }
}


