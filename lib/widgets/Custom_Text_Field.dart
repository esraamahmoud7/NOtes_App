import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notesapp/widgets/Constants.dart';
class CustomText extends StatelessWidget {
  const CustomText({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextField
    (

      cursorColor: KPrimaryColor,
      decoration: InputDecoration(
        hintText: "Title",
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
