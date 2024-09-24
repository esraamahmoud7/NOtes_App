import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/views/NotesView.dart';
import 'package:notesapp/widgets/Constants.dart';


void main() async{
  await Hive.initFlutter();
  await Hive.openBox(KNotesBox);
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
