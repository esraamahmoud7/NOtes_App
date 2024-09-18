import 'package:flutter/material.dart';
import 'package:notesapp/views/NotesView.dart';

void main() {
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
