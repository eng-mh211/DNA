import 'package:flutter/material.dart';

class zain_home_page extends StatefulWidget {
  const zain_home_page({Key? key}) : super(key: key);

  @override
  State<zain_home_page> createState() => _zain_home_pageState();
}

class _zain_home_pageState extends State<zain_home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: Colors.grey,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.settings,
              color: Colors.black,
            ),
            Image.asset(
              "assets/zain_Imgaes/zain logo.png",
              height: 80,
              width: 80,
              color: Colors.cyan,
            ),
            Icon(
              Icons.notifications_active,
              color: Colors.black,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 720,
            child: ListView(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 30,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: [0.5, 6],
                              colors: [Colors.blueGrey, Colors.lime])),
                    ),
                    Container(
                      padding: EdgeInsets.all(100),
                      margin: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                "assets/zain_Imgaes/Image_1.jpg",
                              ))),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: ([
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 3,
                        )
                      ])),
                  child: Column(
                    children: [
                      Text("data"),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 150, vertical: 10),
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(12)),
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("You don't have an account?"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "Tracking Zone",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.all(100),
                            margin: EdgeInsets.only(left: 10, right: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      "assets/zain_Imgaes/map.jpg",
                                    ))),
                          ),
                          Positioned(
                            left: 25,
                            bottom: 10,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 150, vertical: 10),
                              decoration: BoxDecoration(
                                  color: Colors.purple,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Text(
                                "Track",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Futures",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                child: Image.asset(
                                  "assets/zain_Imgaes/gift.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text("Gifts",style: TextStyle(fontSize: 16,color: Colors.black54,)),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                child: Image.asset(
                                  "assets/zain_Imgaes/gift.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text("Gifts",style: TextStyle(fontSize: 16,color: Colors.black54,)),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                child: Image.asset(
                                  "assets/zain_Imgaes/gift.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text("Gifts",style: TextStyle(fontSize: 16,color: Colors.black54,)),
                            ],
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                child: Image.asset(
                                  "assets/zain_Imgaes/gift.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text("Gifts",style: TextStyle(fontSize: 16,color: Colors.black54,)),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                child: Image.asset(
                                  "assets/zain_Imgaes/gift.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text("Gifts",style: TextStyle(fontSize: 16,color: Colors.black54,)),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                child: Image.asset(
                                  "assets/zain_Imgaes/gift.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text("Gifts",style: TextStyle(fontSize: 16,color: Colors.black54,)),
                            ],
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                child: Image.asset(
                                  "assets/zain_Imgaes/gift.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text("Gifts",style: TextStyle(fontSize: 16,color: Colors.black54,)),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                child: Image.asset(
                                  "assets/zain_Imgaes/gift.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text("Gifts",style: TextStyle(fontSize: 16,color: Colors.black54,)),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                child: Image.asset(
                                  "assets/zain_Imgaes/gift.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text("Gifts",style: TextStyle(fontSize: 16,color: Colors.black54,)),
                            ],
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                child: Image.asset(
                                  "assets/zain_Imgaes/gift.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text("Gifts",style: TextStyle(fontSize: 16,color: Colors.black54,)),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                child: Image.asset(
                                  "assets/zain_Imgaes/gift.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text("Gifts",style: TextStyle(fontSize: 16,color: Colors.black54,)),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                child: Image.asset(
                                  "assets/zain_Imgaes/gift.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text("Gifts",style: TextStyle(fontSize: 16,color: Colors.black54,)),
                            ],
                          ),
                        ),

                      ],
                    ),

                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
