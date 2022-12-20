import 'package:app_dccg/misc/buttons.dart';
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
        title: const Text('Menu Principal', style: TextStyle(fontSize: 30, color: Colors.black),),
        actions: const [
          SwitchDarkLight(),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Nome do Jogo', style: TextStyle(fontSize: 50),),
            SizedBox(height: 50,),
            DefaultButton(text: 'Continuar', route: '/game'),
            SizedBox(height: 30,),
            DefaultButton(text: 'Novo Jogo', route: '/game'),
            SizedBox(height: 30,),
            DefaultButton(text: 'Como Jogar', route: '/htp'),
            SizedBox(height: 30,),
            DefaultButton(text: 'Notas Históricas', route: '/notes'),
          ],
        ),
      )
    );
  }
}




