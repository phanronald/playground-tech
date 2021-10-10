import 'package:flutter/material.dart';
import 'hololive.dart';

void main() => runApp(const MyHomePage());

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

 List<Hololive> hololivemem = [
   Hololive('Irys', 'Half angel half demon'),
   Hololive('Calli', 'reaper')
 ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter Test',
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text('Welcome to Irys Tests'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
          elevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
            child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: hololivemem.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 50,
                    color: Colors.amberAccent,
                    child: Center(child: Text('Entry ${hololivemem[index].name}')),
                  );
                }
            ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
            },
            backgroundColor: Colors.grey[800],
            child: const Icon(Icons.add)
        ),
      ),
    );
  }
}

