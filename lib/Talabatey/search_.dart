import 'package:flutter/material.dart';

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.1,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadiusDirectional.circular(30)
              ),
              child: Icon(Icons.search,color: Colors.black,),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 8,bottom: 8, right:100,left: 15),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadiusDirectional.circular(30)
              ),
              child: Text("search for stores",style: TextStyle(color: Colors.black),),
            ),

          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.green,
            height: 180,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.all(4)),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/Talabatey_sources/R_brands/Starbucks-logo.png"),
                    )
                  ),
                ),
                SizedBox(width: 10,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Enjoy Your Coffee",style: TextStyle( color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16
                    ),),
                    Text("Order the best Coffee I your state",style: TextStyle( color: Colors.white,fontSize:12
                    ),),

                  ],
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios,color: Colors.white,)
              ],
            )
          ),
          Expanded(child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Items()
            ],
          ))
        ],
      ),
    );
    
    }
  }
Container Items(){
  return Container(
    padding: EdgeInsets.all(50),
    child: Row(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/Talabatey_sources/R_brands/Starbucks-logo.png"))
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.symmetric( horizontal: 10)),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
          ],
        )
      ],
    ),
  );
}
