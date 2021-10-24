import 'package:flutter/material.dart';
import 'package:ncdropbox/routes/routes.dart';

class Home extends StatefulWidget {

  final String? title;
  const Home({Key? key, @required this.title}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool _secureText = true;
  TextEditingController _passwordController = TextEditingController();
  String? _passwordError = null;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              const TextField(
                decoration: InputDecoration(
                  hintText: "Name",
                  labelText: "Name",
                  labelStyle: TextStyle(
                    fontSize: 24,
                    color: Colors.black26,
                  )
                ),
                keyboardType: TextInputType.name,
                //obscureText: true,
                maxLength: 30,
                maxLines: 3, // cannot use obsecuretext with this
              ),
              const SizedBox( height: 16, ),
              /*Padding (
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: TextField(
                  key: _formKey,
                  controller: _passwordController,
                  decoration: InputDecoration(
                    hintText: "Password",
                    labelText: "Password",
                    errorText: _passwordError,
                    labelStyle: const TextStyle(
                      fontSize: 24,
                      color: Colors.black
                    ),
                    contentPadding: const EdgeInsets.symmetric( horizontal: 10),
                    isDense: true,
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                        icon: Icon(_secureText ? Icons.remove_red_eye : Icons.security),
                        onPressed: () {
                          setState(() => {
                            _secureText = !_secureText
                          });
                        },
                    ),
                  ),
                  obscureText: _secureText,
                ),
              ),*/
              Form(
                key: _formKey,
                child: TextFormField(
                  validator: (value) {
                    print("HI " + value.toString());
                    if(value == null || value.isEmpty) {
                      return "ERROR";
                    }

                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Password",
                    labelText: "Password",
                    labelStyle: const TextStyle(
                        fontSize: 24,
                        color: Colors.black
                    ),
                    contentPadding: const EdgeInsets.symmetric( horizontal: 10),
                    isDense: true,
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(_secureText ? Icons.remove_red_eye : Icons.security),
                      onPressed: () {
                        setState(() => {
                          _secureText = !_secureText
                        });
                      },
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    print("Name: " + _passwordController.text);
                    if(_formKey.currentState != null) {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Processing")),
                        );
                      }
                    }
                  },
                  child: const Text("TEST"),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(RouteManager.locationPage);
                  },
                  child: Text('Go to Choose Location: ${widget.title}')
              )
            ],
          )
      )
    );
  }
}
