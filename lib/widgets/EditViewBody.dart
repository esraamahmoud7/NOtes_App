import 'package:flutter/material.dart';
import 'package:notesapp/widgets/Custom_Text_Field.dart';

import 'App_Bar.dart';
class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column
        (
        children:[
          SizedBox(height: 50,),
          Custom_App_Bar(appBar: "Edit Note",icon:Icons.check),
          SizedBox(height: 32,),
          CustomText(hint: "Title"),
          SizedBox(height: 16,),
          CustomText(hint: "Content",maxLine: 5,),
        ],
      ),
    );
  }
}
