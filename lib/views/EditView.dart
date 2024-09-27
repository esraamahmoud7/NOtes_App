import 'package:flutter/material.dart';

import '../Models/note_model.dart';
import '../widgets/EditViewBody.dart';

class EditView extends StatelessWidget {
  const EditView({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody(note: note),
    );
  }
}
