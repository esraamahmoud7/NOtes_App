import 'package:flutter/material.dart';

import 'Custom_Text_Field.dart';
class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
          children: const [
            SizedBox(height: 32,),
            CustomText(hint:"Title"),
            SizedBox(height: 16,),
            CustomText(hint:"Content",maxLine: 5,)
          ],
      ),
    );
  }
}
