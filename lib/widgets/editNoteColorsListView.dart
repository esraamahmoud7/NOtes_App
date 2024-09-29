import 'package:flutter/material.dart';

import '../Constants.dart';
import '../Models/note_model.dart';
import 'ColorsWidget.dart';



class editColorListView extends StatefulWidget {
  const editColorListView({super.key, required this.note, });

  final NoteModel note;

  @override
  State<editColorListView> createState() => _editColorListViewState();
}

class _editColorListViewState extends State<editColorListView> {
  late int currentIndex;
  //because we can't use widget. in initialization so make it initState because it run before build the widget
  @override
  void initState() {
    currentIndex=KPColors.indexOf(Color(widget.note.color));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 2 * 38,

      child: ListView.builder
        (
          itemCount: KPColors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index)
          {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: GestureDetector
                (
                  onTap: ()
                  {
                    currentIndex = index;
                    widget.note.color=KPColors[index].value;
                    //not need it because if not save will change even not save
                    // widget.note.save();
                    setState(() {});
                  },
                  child: ColorItem(color: KPColors[index] ,isActive: currentIndex == index,
                  )
              ),
            );
          }
      ),
    );
  }
}

