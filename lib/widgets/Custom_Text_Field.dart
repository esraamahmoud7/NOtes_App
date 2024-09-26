import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notesapp/Constants.dart';
class CustomText extends StatelessWidget {
  const CustomText({super.key,required this.hint, this.maxLine=1, this.onSaved});

  final String hint;
  final int maxLine;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return  TextFormField
    (
      onSaved: onSaved,
      validator: (value){
        if(value?.isEmpty ?? true)
          {
            return "Field is required";
          }
        else
          {
            return null;
          }
      },
      cursorColor: KPrimaryColor,
      maxLines: maxLine,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: KPrimaryColor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(KPrimaryColor)
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color:color??Colors.white,
        )
      );
  }
}
