import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Inimigo extends StatefulWidget {
  const Inimigo({Key? key}) : super(key: key);

  @override
  State<Inimigo> createState() => _InimigoState();
}

class _InimigoState extends State<Inimigo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children:  [
          CupertinoButton(
              child: Icon(Icons.person),
              onPressed:( ){
                
              }
          ),
          Text('Dino da Silva Sauro '),
          Text('❤❤❤❤❤❤'),
          CupertinoButton(
              child: Text('Batalhar'),
              onPressed:( ){

              }
          ),
        ],
      )
    );
  }
}
