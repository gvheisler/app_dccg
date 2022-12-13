import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App DCCG",
      theme: ThemeData (
        primaryColor: Colors.red[100],
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Jogo 1 DCCG'),
          ),
          body: Center(
              child: Column(children: <Widget>[
                Container(
                  padding: EdgeInsets.all(30),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.grey[300],
                      elevation: 10,
                      shadowColor: Colors.grey[500],
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                      ),
                      side: const BorderSide(
                          width: 2,
                          color: Colors.black
                      ),
                    ),
                    onPressed: () {
                      print("Continuar");
                    },
                    child: const Text('Continuar'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.grey[300],
                      elevation: 10,
                      shadowColor: Colors.grey[500],
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                      ),
                      side: const BorderSide(
                          width: 2,
                          color: Colors.black
                      ),
                    ),
                    onPressed: () {
                      print("Novo Jogo");
                    },
                    child: Text('Novo Jogo'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.grey[300],
                      elevation: 10,
                      shadowColor: Colors.grey[500],
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                      ),
                      side: const BorderSide(
                          width: 2,
                          color: Colors.black
                      ),
                    ),
                    onPressed: () {
                      print("Manual");
                    },
                    child: Text('Manual'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.grey[300],
                      elevation: 10,
                      shadowColor: Colors.grey[500],
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                      ),
                      side: const BorderSide(
                          width: 2,
                          color: Colors.black
                      ),
                    ),
                    onPressed: () {
                      print("Como Jogar");
                    },
                    child: Text('Como Jogar'),
                  ),
                ),
              ]))),
    );
  }
}