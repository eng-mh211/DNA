import 'package:flutter/material.dart';

class Interfacepage extends StatefulWidget {
  const Interfacepage({Key? key}) : super(key: key);

  @override
  _InterfaceP createState() => _InterfaceP();
}

class _InterfaceP extends State<Interfacepage> {
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
                  "assets/Instagram_logo.svg.png",
                  width: 100,
                  height: 100,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 160),
                  child: Image.asset(
                    "assets/plus .png",
                    width: 25,
                    height: 25,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Image.asset(
                    "assets/mas.png",
                    width: 60,
                    height: 60,
                  ),
                )
              ],
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              story(),
              story(),
              story(),
              story(),
              story(),
              story(),
              story(),
              story(),
            ],
          ),
        ),
      ),
    );
  }

  Container story() {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 10),
      child: Column(
        children: [
          Container(
            height: 65,
            width: 65,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(45)),
          )
        ],
      ),
    );
  }
}
