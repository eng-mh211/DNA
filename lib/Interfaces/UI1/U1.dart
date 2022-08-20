import 'package:flutter/material.dart';

class Interface extends StatefulWidget {
  const Interface({Key? key}) : super(key: key);

  @override
  State<Interface> createState() => _InterfaceState();
}

class _InterfaceState extends State<Interface> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/images/Instagram_logo.svg.png",
                  width: 100,
                  height: 100,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 160),
                  child: Image.asset(
                    "assets/images/plus .png",
                    width: 25,
                    height: 25,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Image.asset(
                    "assets/images/mas.png",
                    width: 60,
                    height: 60,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
