import 'package:dna_project/register.dart';
import 'package:dna_project/task_for_ListView_Builder/register.dart';
import 'package:dna_project/zain/zain_home_page.dart';
import 'package:flutter/material.dart';

import 'Bottom navigtion.dart';
import 'Interfaces/UI1/U1.dart';
import 'Interfaces/UI1/profile.dart';
import 'Talabatey/Talabatey_Home_Page.dart';
import 'Talabatey/Talabatey_Payment.dart';
import 'Talabatey/Talabatey_splash_sec.dart';
import 'Toters/Resturant_page.dart';
import 'Toters/Toters.dart';
import 'task_for_ListView_Builder/ListView_Builder.dart';

void main() {
  runApp(homeB());
}

class homeB extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: test_B(),

    );
  }

}