import 'package:flutter/material.dart';
class Custom_App_Bar extends StatelessWidget {
  const Custom_App_Bar({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('NotesApp',style: TextStyle(fontSize: 28),),
        const Spacer(),
        Container(
          height: 46,
          width: 46,
          decoration: BoxDecoration
            (
            borderRadius: BorderRadius.circular(9),
            color: Colors.grey.withOpacity(0.05),
          ),
          child: const Icon(Icons.search,size: 30,),
        ),
      ],
    );
  }
}