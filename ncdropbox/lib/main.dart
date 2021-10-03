import 'package:flutter/material.dart';

void main() => runApp(const MyHomePage());

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter Test',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter Test'),
          centerTitle: true,
          backgroundColor: Colors.red[600],
        ),
        body: const Center(
          child: Image(
              image: AssetImage('assets/baby-irys.jpg')
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {

          },
            backgroundColor: Colors.red[600],
          tooltip: 'Init Testing',
          child: const Icon(Icons.favorite)
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}

