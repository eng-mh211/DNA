import 'package:flutter/material.dart';
import 'Talabatey_Home_Page.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class splash_sec extends StatefulWidget {
  const splash_sec({Key? key}) : super(key: key);

  @override
  State<splash_sec> createState() => _splash_secState();
}

class _splash_secState extends State<splash_sec> {

  Future Delay() async{
    await new Future.delayed(const Duration(seconds: 4));
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>Talabatey_H())
    );
  }
  @override

  void initState()
  {
    super.initState();
    Delay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/Talabatey_sources/logo.png",height: 160,width: 160,),
            SizedBox(height: 20,),
            // used new dart package (flutter_spinkit)
            SpinKitCircle(
              size: 60,
              color: Colors.white,
            )

          ],
        ),
      ),
    );
  }
}
