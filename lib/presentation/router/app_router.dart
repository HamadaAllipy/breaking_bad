import 'package:breaking_bad/constants/app_strings.dart';
import 'package:breaking_bad/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart' show MaterialPageRoute, Route, RouteSettings;

class AppRouter{

  static Route? onGenerateRouter(RouteSettings settings){
    switch(settings.name){
      case homeScreen:
        return MaterialPageRoute(builder: (context)=> HomeScreen());
      default:
        return null;
    }
  }
}