import 'package:flutter/material.dart';
class Resturant_Page extends StatefulWidget {
  const Resturant_Page({Key? key}) : super(key: key);

  @override
  State<Resturant_Page> createState() => _Resturant_PageState();
}

class _Resturant_PageState extends State<Resturant_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 150,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(12),
                    color: Colors.cyan,
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/Talabatey_sources/Images/hawkers.jpg",
                        ),
                        fit: BoxFit.cover)),
              ),
              Positioned(
                top: 10,
                right: 10,
                child:  Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
              ),
              Positioned(
                bottom: -15,
                right: 10,
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(12),
                    color: Colors.cyan,
                  ),
                  child: Column(
                    children: [
                      Text("1"),
                      Text("X"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
