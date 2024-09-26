import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/simple_bloc_observer.dart';
import 'package:notesapp/views/NotesView.dart';
import 'package:notesapp/Constants.dart';

import 'Models/note_model.dart';
import 'Models/note_model.g.dart';



void main() async{
  await Hive.initFlutter();
  Bloc.observer= SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(KNotesBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme:ThemeData(brightness: Brightness.dark,
        fontFamily: 'assets/Poppins-Regular.ttf'),
        debugShowCheckedModeBanner: false,
        home:NotesView(),
    );
  }
}
