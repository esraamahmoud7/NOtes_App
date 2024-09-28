
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit/notesCubit.dart';

import 'App_Bar.dart';
import 'NOtes_List_View.dart';


class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  // called once
  void initState() {
    // TODO: implement initState
    // this will call before the widget build so the data can't to be null
    // init state should be called before widget was built
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: const Column(
        children: [
          SizedBox(height: 45,),
          Custom_App_Bar(appBar: "Notes ",icon: Icons.search),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}