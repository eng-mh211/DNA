import 'package:dna_project/zain/zain_home_page.dart';
import 'package:flutter/material.dart';

import 'Interfaces/UI1/U1.dart';
import 'Interfaces/UI1/profile.dart';
import 'Talabatey/Talabatey_Payment.dart';
import 'Talabatey/Talabatey_splash_sec.dart';
import 'Toters/Resturant_page.dart';
import 'Toters/Toters.dart';

void main() {
  runApp(homeB());
}

class homeB extends StatelessWidget {
  const homeB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: T_Payment(),
    );
  }
}