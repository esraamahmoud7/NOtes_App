import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/simple_bloc_observer.dart';
import 'package:notesapp/views/NotesView.dart';
import 'package:notesapp/Constants.dart';

import 'Models/note_model.dart';
import 'Models/note_model.g.dart';
import 'cubits/add_note_cubit/Add_Notes_Cubit.dart';


void main() async{
  await Hive.initFlutter();
  Bloc.observer= SimpleBlocObserver();
  await Hive.openBox<NoteModel>(KNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> AddNoteCubit()),
      ],
      child: MaterialApp(
        theme:ThemeData(brightness: Brightness.dark,
        fontFamily: 'assets/Poppins-Regular.ttf'),
        debugShowCheckedModeBanner: false,
        home:NotesView(),
      ),
    );
  }
}
