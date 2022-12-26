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
          title: const Text('Menu de jogo'),
          actions: const [
            SwitchDarkLight(),
            //HomeButton(),
          ],
        ),
        floatingActionButton: HelpButton(),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('Nome do Jogo', style: TextStyle(fontSize: 50),),
              const DefaultCButton(text: 'Buscar Código', route: '/search'),
              const DefaultCButton(text: 'Resolver Desafio', route: '/'),
              const DefaultCButton(text: 'Batalhar', route: '/game/battle'),
              const DefaultCButton(text: 'Propor Solução', route: '/'),
              Container(height: 10),
            ],
          ),
        ),
    );
  }
}





