import 'package:flutter/material.dart';

import '../widgets/NotesVIewBody.dart';
import '../widgets/add_Note_Button.dart';
class NotesView extends StatelessWidget {
  const NotesView ({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton
        (
        onPressed: (){
          showModalBottomSheet(context: context, builder: (context)
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


