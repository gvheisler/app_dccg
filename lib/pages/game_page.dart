import 'package:app_dccg/controller/app_controller.dart';
import 'package:app_dccg/pages/help_page.dart';
import 'package:app_dccg/misc/buttons.dart';
import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {



  const GamePage({Key? key}) : super(key: key);
  @override
  State<GamePage> createState() {
    return _GamePageState();
  }
}


class _GamePageState extends State<GamePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Menu de jogo', style: TextStyle(fontSize: 30, color: Colors.black),),
          actions: const [
            SwitchDarkLight(),
          ],
        ),
        floatingActionButton: HelpButton(),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Nome do Jogo', style: TextStyle(fontSize: 50),),
              DefaultButton(text: 'Buscar Código', route: '/search'),
              DefaultButton(text: 'Resolver Desafio', route: '/'),
              DefaultButton(text: 'Batalhar', route: '/'),
              DefaultButton(text: 'Propor Solução', route: '/'),
              Container(height: 10),
            ],
          ),
        ),
    );
  }
}





