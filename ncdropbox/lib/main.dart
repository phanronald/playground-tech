import 'package:flutter/material.dart';

void main() => runApp(const MyHomePage());

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter Test',
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: const Text('Welcome to Irys Tests'),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/baby-irys.jpg'),
                  radius: 40.0,
                ),
              ),
              Divider(
                height: 60.0,
                color: Colors.grey[800],
              ),
              const Text(
                'NAME',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                )
              ),
              const SizedBox(height: 10.0),// add invisible div for height instead of padding
              Text(
                  'Irys',
                  style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  )
              ),
              const SizedBox(height: 30.0),// add invisible div for height instead of padding
              const Text(
                  'will battle against',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  )
              ),
              const SizedBox(height: 10.0),
              const Text(
                  'Calli',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  )
              ),
              const SizedBox(height: 30.0),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.grey[400]
                  ),
                  const SizedBox(width: 10.0),
                  Text(
                    'irys@calli.net',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
            ],
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

