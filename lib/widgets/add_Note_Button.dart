
import 'package:flutter/material.dart';

import 'CustomButton.dart';
import 'Custom_Text_Field.dart';
class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
            children: const [
              SizedBox(height: 32,),
              CustomText(hint:"Title"),
              SizedBox(height: 16,),
              CustomText(hint:"Content",maxLine: 5,),
              SizedBox(height: 32,),
              CustomButton(),
              SizedBox(height: 32,)
            ],
        ),
      ),
    );
  }
}


