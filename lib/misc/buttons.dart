import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../controller/app_controller.dart';

class DefaultButton extends StatelessWidget {
  final String route;
  final String text;
  const DefaultButton({Key? key, required this.route, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: (){
        Navigator.of(context).pushNamed(route);
      },
      child: (
          Text(text, textAlign: TextAlign.center, style: TextStyle(color: Colors.black),)
      ),
    );
  }
}

class SwitchDarkLight extends StatelessWidget {
  const SwitchDarkLight({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value){
        AppController.instance.ChangeTheme();
      },
    );
  }
}


class HelpButton extends StatelessWidget {
  const HelpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
        onPressed: (){
          Navigator.of(context).pushNamed('/help');
        },
        label: const Text('Ajuda'),
        icon: const Icon(Icons.question_mark),
    );
  }
}

class HomeButton extends StatelessWidget {
  const HomeButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: (){
        Navigator.of(context).pushReplacementNamed('/home');
      },
      icon: Icon(Icons.home_filled),
      label: const Text(
        'Início', style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class DefaultCButton extends StatelessWidget {
  final String route;
  final String text;

  const DefaultCButton({Key? key, required this.route, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      disabledColor: Colors.grey,
      //color: AppController.instance.isDarkTheme ? Colors.red : Colors.blue,
      color: Colors.blueGrey[300],
      onPressed: (){
        Navigator.of(context).pushNamed(route);

      },
      borderRadius: BorderRadius.circular(24),
      child: (
          Text(text, textAlign: TextAlign.center, style: TextStyle(fontSize: 35, color: Colors.black87),)
      ),
    );
  }
}
