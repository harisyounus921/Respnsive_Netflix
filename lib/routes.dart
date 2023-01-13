import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Screen/HomeScreen/HomeScreen.dart';
import 'Screen/HomeScreen/movie_details_screen/Details_screen.dart';
import 'Screen/NavScreen/NavScreen.dart';
import 'Screen/SplashScreen/SplashScreen.dart';


class RouteName{
  static const String splashScreen="splash_screen";
  static const String navScreen="nav_screen";
  static const String homeScreen="home_screen";
  static const String movieDetailsScreen="moviedetail_screen";
}

class Routes{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case RouteName.splashScreen:
        return MaterialPageRoute(builder: (context)=> Splashscreen());
      case RouteName.navScreen:
        return MaterialPageRoute(builder: (context)=> NavScreen());
      case RouteName.homeScreen:
        return MaterialPageRoute(builder: (context)=> HomeScreen());
      case RouteName.movieDetailsScreen:
        return MaterialPageRoute(builder: (context)=> MovieDetailsScreen(data:settings.arguments as Map));
      default:
        return MaterialPageRoute(builder: (context){
          return const Scaffold(
            body: Center(child: Text("No route defined")),
          );
        });


    }
  }
}