import 'package:flutter/material.dart';
class Custom_App_Bar extends StatelessWidget {
  const Custom_App_Bar({super.key,required this.appBar, required this.icon, this.onPressed});

  final String appBar;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(appBar,style: TextStyle(fontSize: 28),),
        const Spacer(),
        Container(
          height: 46,
          width: 46,
          decoration: BoxDecoration
            (
            borderRadius: BorderRadius.circular(9),
            color: Colors.grey.withOpacity(0.1),
          ),
          child:  IconButton(onPressed: onPressed,icon: Icon(icon,size: 30,)),
        ),
      ],
    );
  }
}