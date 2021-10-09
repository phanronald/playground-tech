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
          title: const Text('Welcome to Irys Tests'),
          centerTitle: true,
          backgroundColor: Colors.red[600],
        ),
        body: Row(
          children: [
            Expanded(
              flex: 3,
              child: Image.asset('assets/baby-irys-pokemon.jpg'),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(30.0),
                color: Colors.cyan,
                child: const Text('1')
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                  padding: const EdgeInsets.all(30.0),
                  color: Colors.pinkAccent,
                  child: const Text('2')
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                  padding: const EdgeInsets.all(30.0),
                  color: Colors.amber,
                  child: const Text('3')
              ),
            ),
          ]
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

