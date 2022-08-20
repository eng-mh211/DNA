import 'package:flutter/material.dart';

import 'Interfaces/UI1/U1.dart';

void main() {
  runApp(Interface());
}

class homeB extends StatelessWidget {
  const homeB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Interface(),
    );
  }
}