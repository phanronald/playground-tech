
import 'package:flutter/material.dart';
import 'hololive.dart';

class HololiveCard extends StatelessWidget {

  final Hololive hololive;
  final Function delete;
  HololiveCard(this.hololive, this.delete);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                  hololive.name,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey[600],
                  )
              ),
              const SizedBox(height: 6.0),
              Text(
                  hololive.description,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey[800],
                  )
              ),
              const SizedBox(height: 8.0),
              TextButton(
                  onPressed: () {
                    delete();
                  },
                  child: const Icon(Icons.delete)
              )
            ]
        ),
      ),
    );
  }
}
