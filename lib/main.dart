// import 'package:first_app/uitls/text_style.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/bottom-bar.dart';

import 'uitls/text_style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My First App",
      theme: ThemeData(
        primaryColor: primary,
      ),
      home: const BottomBar(),
    );
  }
}
