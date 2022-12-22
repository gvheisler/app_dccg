import 'package:app_dccg/misc/buttons.dart';
import 'package:flutter/cupertino.dart';
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
        title: const Text('Menu Principal'),
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
            DefaultCButton(text: 'Continuar', route: '/game'),
            SizedBox(height: 30,),
            DefaultCButton(text: 'Novo Jogo', route: '/game'),
            SizedBox(height: 30,),
            DefaultCButton(text: 'Como Jogar', route: '/help/htp'),
            SizedBox(height: 30,),
            DefaultCButton(text: 'Notas Históricas', route: '/help/notes'),
            /*SizedBox(height: 30,),
            CupertinoButton.filled(
                onPressed: () {  },
                child: Text('Notas Históricas', style: TextStyle(fontSize: 35),),

            )*/
          ],
        ),
      ) 
    );
  }
}




