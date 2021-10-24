import 'package:flutter/material.dart';
import 'package:ncdropbox/pages/home.dart';
import 'package:ncdropbox/pages/loading.dart';
import 'package:ncdropbox/pages/choose_location.dart';

class RouteManager {

  static const String loadingPage = '/';
  static const String homePage = '/home';
  static const String locationPage = '/location';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch(settings.name) {
      case loadingPage: {
        return MaterialPageRoute(builder: (context) => const Loading());
        break;
      }
      case homePage: {
        final args = settings.arguments as Map<String, String>;
        String a = args["title"] ?? "";
        return MaterialPageRoute(builder: (context) => Home(title: a));
        break;
      }
      case locationPage: {
        return MaterialPageRoute(builder: (context) => const ChooseLocation());
        break;
      }
      default: {
        throw const FormatException('Route not found! Check routes again');
        break;
      }
    }
  }

}