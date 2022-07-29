import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home/home_food_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Devivery',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: HomeFoodPage(),
    );
  }
}