import 'package:flutter/material.dart';

import '../Constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.OnTap, required this.isLoading});

  final void Function()? OnTap;
  final bool isLoading;

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
        child:Center(
          child:isLoading? SizedBox(width: 30,height: 30,child: CircularProgressIndicator(color: Colors.black,)) :
          Text("Add",
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