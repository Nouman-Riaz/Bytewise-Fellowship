import 'dart:js';
import 'package:flutter/material.dart';
import 'package:week3457_practice_flutter/Screen3.dart';
import 'package:week3457_practice_flutter/home_screen.dart';
import 'package:week3457_practice_flutter/utils/routes_name.dart';
import '../Screen2.dart';

class Routes{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case RouteNames.HomeScreen:
        return MaterialPageRoute(builder: (context) => MyHomePage());
      case RouteNames.ScreenTwo:
        return MaterialPageRoute(builder: (context) => Screen2(data: settings.arguments as Map));
      case RouteNames.ScreenThree:
        return MaterialPageRoute(builder: (context) => Screen3(data: settings.arguments as Map));
      default:
        return MaterialPageRoute(builder: (context){
          return const Scaffold(
            body: Center(child: Text('No Route Found'),)
          );
        });
    }
  }
}