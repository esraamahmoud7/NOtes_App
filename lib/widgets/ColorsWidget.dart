import 'package:flutter/material.dart';


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
  List<Color> Colors=[
    Color(0xff5E0B15),
    Color(0xff482C3D),
    Color(0xff90323D),
    Color(0xff537D8D),
    Color(0xff5B9279),
    Color(0xff8C7A6B),
    Color(0xffEAE6E5)
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 2 * 38,

      child: ListView.builder
        (
          itemCount: Colors.length,
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
                    setState(() {});
                  },
                  child: ColorItem(color: Colors[index] ,isActive: currentIndex == index,
                  )
              ),
            );
          }
      ),
    );
  }
}

