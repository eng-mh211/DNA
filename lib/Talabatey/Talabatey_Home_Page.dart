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
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.all(6),
                    child: Container(
                      height: 180,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          TopFoodCard("Westurent",
                              "assets/Talabatey_sources/Images/bluehill.jpg"),
                          TopFoodCard("NEW!!",
                              "assets/Talabatey_sources/Images/flipping.jpg"),
                          TopFoodCard("Westren",
                              "assets/Talabatey_sources/Images/noodles.jpg"),
                          TopFoodCard("Eastren",
                              "assets/Talabatey_sources/Images/rice_and_chicken.jpg"),
                          TopFoodCard("FastFood..?",
                              "assets/Talabatey_sources/Images/pizzahut.jpg"),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
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
                          )
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(6),
                    child: Container(
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
                  ),
                  Padding(
                    padding: EdgeInsets.all(6),
                    child: Container(
                      height: 142,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Food(
                            "assets/Talabatey_sources/Images/burger.jpg",
                            "burger",
                            "At lest:10\$"
                          ),
                          Food(
                            "assets/Talabatey_sources/Images/burger.jpg",
                            "burger",
                            "At lest:10\$"
                          ),
                          Food(
                            "assets/Talabatey_sources/Images/burger.jpg",
                            "burger",
                            "At lest:10\$"
                          ),
                          Food(
                            "assets/Talabatey_sources/Images/burger.jpg",
                            "burger",
                            "At lest:10\$"
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(6),
                    child: Container(
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
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(6),
                  child: Column(
                    children: [
                      Icon(
                        Icons.account_box_outlined,
                        size: 30,
                      ),
                      Text("Account")
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(6),
                  child: Column(
                    children: [
                      Icon(
                        Icons.receipt_long_rounded,
                        size: 30,
                      ),
                      Text("Delivery")
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(6),
                  child: Column(
                    children: [
                      Icon(
                        Icons.wallet,
                        size: 30,
                      ),
                      Text("Wallet")
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(6),
                  child: Column(
                    children: [
                      Icon(
                        Icons.home_filled,
                        size: 30,
                      ),
                      Text("Home")
                    ],
                  ),
                ),
              ],
            ),
          )),
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

  Column Food(String Images_Food,String name_Food,String Price){
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
              child:Column(
                children: [
                  Padding(padding: EdgeInsets.all(18),child:  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child:Icon(Icons.delivery_dining,color: Colors.red,),
                      )
                    ],),)
                ],
              )
            ),

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
            SizedBox(width: 80,),
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
}
