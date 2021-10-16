import 'package:flutter/material.dart';
import 'package:ncdropbox/routes/routes.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        initialRoute: RouteManager.homePage,
        onGenerateRoute: RouteManager.generateRoute,
    );
  }
}
