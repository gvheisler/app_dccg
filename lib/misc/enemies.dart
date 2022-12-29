import 'package:app_dccg/misc/buttons.dart';
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
        children: const [
          DefaultCButton(route: '/', text: 'Batalhar'),
          DefaultCButton(route: '/', text: 'Batalhar'),
          DefaultCButton(route: '/', text: 'Batalhar')
        ],
      )
    );
  }
}
