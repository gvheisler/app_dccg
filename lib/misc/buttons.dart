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
          Text(text)
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
    return OutlinedButton(
      onPressed: (){
        Navigator.of(context).pushReplacementNamed('/home');
      },
      child: (
          const Text('Início')
      ),
    );
  }
}
