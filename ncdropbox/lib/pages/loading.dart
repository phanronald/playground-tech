import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:ncdropbox/routes/routes.dart';
import 'package:ncdropbox/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = 'loading';

  void setupWorldTime() async {
    var url = Uri.parse('https://worldtimeapi.org/api/timezone/America/Los_Angeles');
    WorldTime worldTime = WorldTime('Los Angeles', url);
    var a = await worldTime.getTime();

    setState(() {
      time = a;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Text(time),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                        RouteManager.homePage,
                        arguments: { 'title': 'YESSIR'}
                    );
                  },
                  child: const Text('Go to Choose HOme')
              )
            ],
          )
      )
    );
  }
}
