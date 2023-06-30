import 'package:flutter/material.dart';
import 'package:services/homescreen.dart';
import 'package:services/screen2.dart';

import 'ScreenThree.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      initialRoute: '/',
      routes: {
        '/': (context) => ScreenTwo(),
        '/one': (context) => MyHomeScreen(),
      },
    );
  }
}
