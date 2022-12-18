import 'package:app_dccg/app_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {



  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() {
        return _HomePageState();
  }
}


class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DCCG Game', style: TextStyle(fontSize: 30, color: Colors.black),),
        actions: const [
          SwitchDarkLight(),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Text('Nome do Jogo', style: TextStyle(fontSize: 50),),
            DefaultButton(text: 'Continuar', route: '/'),
            DefaultButton(text: 'Novo Jogo', route: '/'),
            DefaultButton(text: 'Manual', route: '/'),
            DefaultButton(text: 'Como Jogar', route: '/'),
          ],
        ),
      )
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

class DefaultButton extends StatelessWidget {
  final String route;
  final String text;

  const DefaultButton({Key? key, required this.route, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: (){

      },
      child: (
          Text(text, style: const TextStyle(color: Colors.black),)
      ),
    );
  }
}

