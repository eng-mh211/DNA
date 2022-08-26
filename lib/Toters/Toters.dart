import 'package:flutter/material.dart';
import 'package:carousel_images/carousel_images.dart';

class Toters_H extends StatefulWidget {
  const Toters_H({Key? key}) : super(key: key);

  @override
  State<Toters_H> createState() => _Toters_HState();
}

class _Toters_HState extends State<Toters_H> {
  final List<String> listImages = [
    "assets/Talabatey_sources/Images/noodles.jpg",
    "assets/Talabatey_sources/Images/noodles.jpg",
    "assets/Talabatey_sources/Images/noodles.jpg",
    "assets/Talabatey_sources/Images/noodles.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.filter_list,
              color: Colors.black,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black,
                    ),
                    Text(
                      "توصيل الى \n العرق بغداد",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "سجل الدخول",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.account_box_outlined),
                  ],
                ),
                CarouselImages(
                  scaleFactor: 0.2,
                  listImages: listImages,
                  height: 200.0,
                  borderRadius: 30.0,
                  cachedNetworkImage: true,
                  verticalAlignment: Alignment.bottomCenter,
                  onTap: (index) {
                    print('Tapped on page $index');
                  },
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          top: 15, left: 40, right: 40, bottom: 15),
                      decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.circular(15)),
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            child: Image.asset(
                              "assets/Talabatey_sources/R_brands/burger-king-logo.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text("data"),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 15, left: 40, right: 40, bottom: 15),
                      decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.circular(15)),
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            child: Image.asset(
                              "assets/Talabatey_sources/R_brands/burger-king-logo.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text("data"),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      margin: EdgeInsets.all(4),
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            child: Image.asset(
                              "assets/Talabatey_sources/R_brands/burger-king-logo.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text("data"),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      margin: EdgeInsets.all(4),
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            child: Image.asset(
                              "assets/Talabatey_sources/R_brands/burger-king-logo.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text("data"),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      margin: EdgeInsets.all(4),
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            child: Image.asset(
                              "assets/Talabatey_sources/R_brands/burger-king-logo.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text("data"),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 500,
                  width: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Sed ut perspiciatis unde omnis iste natus error sit",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black.withOpacity(0.4),
                                      fontSize: 16),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
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
                                      bottom: -10,
                                     right: 10,
                                     child: Container(
                                       padding: EdgeInsets.all(8),
                                       decoration: BoxDecoration(
                                           borderRadius:
                                           BorderRadius.circular(12),
                                           color: Colors.cyan,
                                           ),
                                        child: Column(
                                          children: [
                                            Text("data"),
                                            Text("data"),
                                          ],
                                        ),
                                     ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Hamburger",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "full-mael-> \$\$",
                                  style: TextStyle(fontSize: 15),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 5),
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: Colors.grey.withOpacity(0.5),
                                        borderRadius: BorderRadius.circular(15)
                                      ),
                                      child: Row(
                                        children: [
                                          Text("4.5",style: TextStyle(fontSize: 12),),
                                          Icon(Icons.star_border)
                                        ],
                                      )
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 5),
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: Colors.red.withOpacity(0.5),
                                        borderRadius: BorderRadius.circular(15)
                                      ),
                                      child: Row(
                                        children: [
                                          Text("Win some points..!",style: TextStyle(fontSize: 15),),
                                          Icon(Icons.add_circle_outline)
                                        ],
                                      )
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
