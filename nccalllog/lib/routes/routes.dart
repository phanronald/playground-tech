import 'package:flutter/material.dart';
import 'package:nccalllog/pages/home.dart';

class RouteManager {

  static const String homePage = '/';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch(settings.name) {
      case homePage: {
        return MaterialPageRoute(builder: (context) => const Home());
        break;
      }
      default: {
        throw const FormatException('Route not found! Check routes again');
        break;
      }
    }
  }

}