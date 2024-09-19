import 'package:flutter/material.dart';

import '../views/EditView.dart';
class Note_Item extends StatelessWidget {
  const Note_Item({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
        Navigator.push(context,MaterialPageRoute(builder: (context)
        {
          return EditView();
        }
          )
        );
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24,bottom: 24,left: 16,),
        decoration: BoxDecoration(
            color: const Color(0xffFFCC80),
            borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title:const Text("Flutter tips",style: TextStyle(color: Colors.black,fontSize: 26),),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16,bottom: 16),
                child: Text("Build your career with samy tharwat",style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 18),),
              ),
              trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.delete),color: Colors.black,iconSize: 34,),
            ),
            Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text("20May 2020",style: TextStyle(color: Colors.black.withOpacity(.4),fontSize: 16))
            ),
          ],
        ),
      ),
    ) ;
  }
}