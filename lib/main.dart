//---------------health calculator app(with theme property and new extract or refactored property)-----------------------
import 'package:flutter/material.dart';
import 'package:new_bmi/splash/splash_screen.dart';

void main() {
  runApp(Myapp());
}

bool islight = true;

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: islight
          ? ThemeData.light()
          : ThemeData.dark().copyWith(
              primaryColor: Color(0xFF272627),
              scaffoldBackgroundColor: Color(0xFF272627)),
      home: Splash(),
    );
  }
}
