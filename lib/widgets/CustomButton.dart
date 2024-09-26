import 'package:flutter/material.dart';

import '../Constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.OnTap});

  final void Function()? OnTap;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: OnTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: KPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const  Center(
          child: Text("Add",
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold
            )
            ,),
        ),
      ),
    );
  }
}