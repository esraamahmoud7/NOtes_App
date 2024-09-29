import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Constants.dart';
import '../cubits/add_note_cubit/Add_Notes_Cubit.dart';


class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});

  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive ?
     CircleAvatar(
      radius: 38,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 36,
        backgroundColor: color,
      ),
    )  : CircleAvatar(
      radius: 38,
      backgroundColor: color,
    );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key, });



  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex=0;

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
                    BlocProvider.of<AddNoteCubit>(context).color=KPColors[index];
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

