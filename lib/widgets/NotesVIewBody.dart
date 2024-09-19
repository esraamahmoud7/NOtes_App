
import 'package:flutter/material.dart';

import 'App_Bar.dart';
import 'NOtes_List_View.dart';


class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: const Column(
        children: [
          SizedBox(height: 45,),
          Custom_App_Bar(appBar: "Notes App",icon: Icons.search),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}