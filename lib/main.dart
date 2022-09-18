import 'package:flutter/material.dart';
import 'package:netflix_responsive/Screen/HomeScreen/HomeScreen.dart';
import 'package:netflix_responsive/Screen/NavScreen/NavScreen.dart';
import 'package:netflix_responsive/Screen/SplashScreen/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix Responsive',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor:Colors.black
      ),
      home: Splashscreen(),
    );
  }
}
