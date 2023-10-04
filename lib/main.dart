import 'package:flutter/material.dart';

import './features/home/ui/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primaryColor: Colors.purpleAccent,
      // ),
      home: Home(),
    );
  }
}
