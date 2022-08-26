import 'package:flutter/material.dart';

import 'Talabatey_Resturant_Card.dart';

class Talabatey_H extends StatefulWidget {
  const Talabatey_H({Key? key}) : super(key: key);

  @override
  State<Talabatey_H> createState() => _Talabatey_HState();
}

class _Talabatey_HState extends State<Talabatey_H> {
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
              Icons.search,
              color: Colors.black,
            ),
            Row(
              children: [
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.black,
                ),
                Text(
                  "المنصور",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            Icon(
              Icons.notifications_active,
              color: Colors.black,
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(6)),
            Container(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  TopFoodCard("Westurent",
                      "assets/Talabatey_sources/Images/bluehill.jpg"),
                  TopFoodCard(
                      "NEW!!", "assets/Talabatey_sources/Images/flipping.jpg"),
                  TopFoodCard(
                      "Westren", "assets/Talabatey_sources/Images/noodles.jpg"),
                  TopFoodCard("Eastren",
                      "assets/Talabatey_sources/Images/rice_and_chicken.jpg"),
                  TopFoodCard("FastFood..?",
                      "assets/Talabatey_sources/Images/pizzahut.jpg"),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 8,
                      ),
                      Column(
                        children: [
                          Text(
                            "Popular Resturants",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          ),
                          SizedBox(
                            height: 10,
                            width: 160,
                            child: Divider(
                              height: 10,
                              thickness: 5,
                              color: Color(0xffec3c44),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          )
                        ],
                      ),
                    ],
                  ), //Popluar_Resturants
                  Container(
                    height: 142,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ResturantsCards(
                            "assets/Talabatey_sources/R_brands/Starbucks-logo.png",
                            "Starbucks"),
                        ResturantsCards(
                            "assets/Talabatey_sources/R_brands/png_kfc_64347.png",
                            "KFC"),
                        ResturantsCards(
                            "assets/Talabatey_sources/R_brands/McDonald's_1968_logo.png",
                            "McDonald's"),
                        ResturantsCards(
                            "assets/Talabatey_sources/R_brands/burger-king-logo.png",
                            "BurgerKing"),
                      ],
                    ),
                  ),
                  Container(
                    height: 500,
                    width: 250,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: [
                            Go_To_resturant("assets/Talabatey_sources/Images/cheesechilly.jpg",
                            "CheeseChilly",
                            "4.3",
                            "45-30",
                            "Full-Mael...\$\$"),
                            Go_To_resturant("assets/Talabatey_sources/Images/rice_and_chicken.jpg",
                            "Rice and Chicken",
                            "4.6",
                            "40-30",
                            "The best meal with your family"),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.receipt_long_rounded),label: "Delivery"),
          BottomNavigationBarItem(icon: Icon(Icons.wallet),label: "Wallet"),
          BottomNavigationBarItem(icon: Icon(Icons.account_box_outlined),label: "Account"),
        ],
      )
    );
  }

  Column TopFoodCard(String tags, String Images_Food) {
    return Column(
      children: [
        Container(
          height: 140,
          width: 140,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Images_Food), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(50),
          ),
          margin: EdgeInsets.symmetric(horizontal: 10),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 5,
              ),
              Text(
                tags,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )
            ],
          ),
        )
      ],
    );
  }

  Column ResturantsCards(String R_Images, String R_Name) {
    return Column(
      children: [
        Container(
          height: 110,
          width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(R_Images), fit: BoxFit.contain),
            borderRadius: BorderRadius.circular(50),
          ),
          margin: EdgeInsets.symmetric(horizontal: 10),
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: EdgeInsets.only(right: 90),
          child: Text(
            R_Name,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
        )
      ],
    );
  }

  Container Choices(String choices) {
    return Container(
      height: 20,
      width: 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(choices)],
      ),
    );
  }

  Column Food(String Images_Food, String name_Food, String Price) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          children: [
            Container(
                height: 110,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(Images_Food), fit: BoxFit.contain),
                  borderRadius: BorderRadius.circular(50),
                ),
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Icon(
                              Icons.delivery_dining,
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Container(
                              margin: EdgeInsets.all(5),
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Text("promo")),
                        ],
                      ),
                    )
                  ],
                )),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name_Food,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(
              width: 80,
            ),
            Text(
              Price,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ],
        )
      ],
    );
  }

  Container Go_To_resturant(
      String Card_Image, String Card_name, String Card_Rate, String Card_time,String Card_Data) {
    return Container(
      padding: EdgeInsets.all(8),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Sed ut perspiciatis unde omnis",
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
                width: 240,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.cyan,
                    image: DecorationImage(
                        image: AssetImage(
                          Card_Image,
                        ),
                        fit: BoxFit.cover)),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Resturant_Card(
                              C_Name: Card_name,
                              C_Rate: Card_Rate,
                              C_Dis: Card_Data,
                              C_Time: Card_time, C_Image: Card_Image,
                            )));
                  },
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
              ),
              Positioned(
                bottom: -10,
                right: 10,
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey.shade200,
                  ),
                  child: Column(
                    children: [
                      Text(Card_time,style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Min",style: TextStyle(fontSize: 12,color: Colors.black54),),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Text(
            Card_name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            Card_Data,
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Icon(Icons.star_border),
                      Text(
                        Card_Rate,
                        style: TextStyle(fontSize: 12),
                      ),

                    ],
                  )),
              Container(
                  margin: EdgeInsets.only(left: 5),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.red.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Icon(Icons.add_circle_outline),
                      Text(
                        "Win some points..!",
                        style: TextStyle(fontSize: 15),
                      ),

                    ],
                  )), //Win some points..!
            ],
          )
        ],
      ),
    );
  }
}
