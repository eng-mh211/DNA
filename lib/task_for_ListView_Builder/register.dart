import 'package:flutter/material.dart';

import 'ListView_Builder.dart';

class Rig_test extends StatefulWidget {
  const Rig_test({Key? key}) : super(key: key);

  @override
  State<Rig_test> createState() => _Rig_testState();
}

class _Rig_testState extends State<Rig_test> {
  bool click = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffe93946),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/Talabatey_sources/logo_T.png",
                    height: 200,
                    width: 200,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadiusDirectional.circular(50)),
                  child: TextFormField(
                    cursorColor: Colors.red,
                    decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      border: InputBorder.none,
                      hintStyle: TextStyle(fontSize: 18),
                      hintText: "Username",
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadiusDirectional.circular(50)),
                  child: TextFormField(
                    cursorColor: Colors.red,
                    decoration: InputDecoration(
                      icon: Icon(Icons.call),
                      border: InputBorder.none,
                      hintStyle: TextStyle(fontSize: 18),
                      hintText: "Phone number",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      click = !click;
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Do you have membership card..?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                          (click == false)
                              ? Icons.arrow_drop_down_sharp
                              : Icons.arrow_right,
                          color: Colors.white),
                    ],
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                if (click == false) ...[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadiusDirectional.circular(50)),
                    child: TextFormField(
                      cursorColor: Colors.red,
                      decoration: InputDecoration(
                        icon: Icon(Icons.code),
                        border: InputBorder.none,
                        hintStyle: TextStyle(fontSize: 18),
                        hintText: "Shere code",
                      ),
                    ),
                  ),
                ],
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => test_B()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadiusDirectional.circular(50)),
                    child: Text(
                      "Next",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.red),
                    ),
                  ),
                ),
                SizedBox(
                  height: 150,
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
