import 'package:flutter/material.dart';

class Talabatey_H extends StatefulWidget {
  const Talabatey_H({Key? key}) : super(key: key);

  @override
  State<Talabatey_H> createState() => _Talabatey_HState();
}

class _Talabatey_HState extends State<Talabatey_H> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.search,color:  Colors.black,),
            Row(
              children: [
                Icon(Icons.keyboard_arrow_down,color:  Colors.black,),
                Text("المنصور",style: TextStyle(color: Colors.black),),
              ],
            ),
            Icon(Icons.notifications_active,color:  Colors.black,),
          ],

        ),
      ),
      body: Column(

        children: [

        ],

      ),
    );
  }
}
