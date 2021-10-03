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
        body: Center(
          child: ListView(
            children: [
              Column(
                  children: [
                    Container(
                      child: Image.asset('assets/baby-irys.jpg'),
                    ),
                    Container(
                      child: Image.asset('assets/baby-irys-pokemon.jpg'),
                    )
                  ]
              )
            ],
          )
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

