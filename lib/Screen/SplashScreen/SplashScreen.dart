import 'dart:async';
import 'package:flutter/material.dart';
import 'package:netflix_responsive/Screen/NavScreen/NavScreen.dart';

import '../../routes.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}
class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    login();
  }
  void login()async{
      Timer(Duration(seconds: 4), (){
        Navigator.pushNamed(context, RouteName.navScreen);
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: const Image(
            //height: double.infinity,fit: BoxFit.fitHeight,
            image: AssetImage("assets/Splash.gif"),
            fit: BoxFit.cover,),
        ),
      ),
    );
  }
}

