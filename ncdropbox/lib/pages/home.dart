import 'package:flutter/material.dart';
import 'package:ncdropbox/routes/routes.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(RouteManager.locationPage);
                  },
                  child: const Text('Go to Choose Location')
              )
            ],
          )
      )
    );
  }
}
