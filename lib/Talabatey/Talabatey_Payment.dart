import 'package:flutter/material.dart';

class T_Payment extends StatefulWidget {


  @override
  State<T_Payment> createState() => _T_PaymentState();
}

class _T_PaymentState extends State<T_Payment> {
  int num = 1;
  int delivery = 1500;
  int price = 6000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
         children: [
           Expanded(child: ListView(
             padding: EdgeInsets.symmetric(vertical: 2),
             children: [
               Column(
                 children: [
                   Stack(
                     clipBehavior: Clip.none,
                     children: [
                       Image.asset("assets/Talabatey_sources/Images/cheesechilly.jpg"),
                       Positioned(
                         bottom: -20,
                         child: Container(
                           height: 100,
                           width: MediaQuery.of(context).size.width,
                           decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadiusDirectional.circular(15)
                           ),
                           child: Row(
                             children: [
                               Padding(padding: EdgeInsets.only(left: 12),),
                               Text("CheeseChilly",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.red),)
                             ],
                           ),
                         ),)

                     ],
                   ),
                   Container(
                     padding: EdgeInsets.only(top:20,left: 10),
                     height: MediaQuery.of(context).size.width,
                     decoration: BoxDecoration(
                         color: Colors.white

                     ),

                     child: Column(
                       children: [
                         Row(
                           children: [
                             Icon(Icons.delivery_dining,),
                             Padding(padding: EdgeInsets.symmetric(horizontal: 6)),
                             Text("Delivery price 1500 IQD",style: TextStyle(fontSize: 16 ),),
                             Row(
                               children: [
                                 Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
                                 Icon(Icons.face),
                                 Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
                                 Text("Hot and Spicy")
                               ],
                             )
                           ],
                         ),
                         SizedBox(height: 50,),
                         Row(
                           children: [
                             Icon(Icons.location_on,),
                             Padding(padding: EdgeInsets.symmetric(horizontal: 6)),
                             Text("Baghdad",style: TextStyle(fontSize: 16 ),),
                             Row(
                               children: [
                                 Padding(padding: EdgeInsets.symmetric(horizontal: 70)),
                                 Icon(Icons.blur_circular_sharp),
                                 Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
                                 Column(
                                   children: [
                                     Text("Minimum order \n4500 IO")
                                   ],
                                 )
                               ],
                             )
                           ],
                         ),
                         SizedBox(height: 50,),
                         Row(
                           children: [
                             Icon(Icons.access_time_filled,),
                             Padding(padding: EdgeInsets.symmetric(horizontal: 6)),
                             Text("estimated time for delivery 1 hour",style: TextStyle(fontSize: 16 ),),
                           ],
                         ),


                         

                       ],
                     ),
                   )
                 ],
               )
             ],
           ),)
         ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          alignment: Alignment.center,
          height: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:  [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadiusDirectional.circular(30)
                    ),
                    child: IconButton(icon: Icon(Icons.remove), onPressed: ()=>setState(() {
                      if (num > 1 && price >= 4500 ){
                        num--;
                        price=price-4500;

                      }
                    }),),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadiusDirectional.circular(30)
                    ),
                    child: Text("$num",style: TextStyle(fontSize: 16),),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadiusDirectional.circular(30)
                    ),

                    child: IconButton(icon: Icon(Icons.add), onPressed: ()=>setState(() {
                      num++;
                      price= price + 4500;
                    }),),
                  ),
                ],
              ),
              SizedBox(height: 5,),
              Text("$price IQ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.red),),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.2),
                    borderRadius: BorderRadiusDirectional.circular(30)
                ),
                child: Text("Add to Cart",style: TextStyle(fontSize: 16),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
