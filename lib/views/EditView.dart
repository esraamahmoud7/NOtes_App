import 'package:flutter/material.dart';

import '../widgets/EditViewBody.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteView(),
    );
  }
}
