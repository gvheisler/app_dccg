import 'package:app_dccg/misc/buttons.dart';
import 'package:flutter/material.dart';

class BattlePage extends StatelessWidget {
  const BattlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Escolha um inimigo para batalhar!'),
      ),
      body: Center(
        child: Container(
          color: Colors.grey,
          height: 505,
          width: 405,
          child: Align(
            alignment: Alignment.center,
            child: Container(
              color: Colors.white,
              height: 500,
              width: 400,
              child: ListView(
                children: [
                  DefaultButton(route: '/', text: 'text'),
                  DefaultButton(route: '/', text: 'text'),
                  DefaultButton(route: '/', text: 'text'),
                  DefaultButton(route: '/', text: 'text'),
                  DefaultButton(route: '/', text: 'text'),
                  DefaultButton(route: '/', text: 'text'),
                  DefaultButton(route: '/', text: 'text'),
                  DefaultButton(route: '/', text: 'text'),
                  DefaultButton(route: '/', text: 'text'),
                  DefaultButton(route: '/', text: 'text'),
                  DefaultButton(route: '/', text: 'text'),

                ],

              )
            ),
          ),
        ),
      ),
    );
  }
}
