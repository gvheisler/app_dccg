import 'package:app_dccg/misc/buttons.dart';
import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ajuda"),
        actions: const [
          SwitchDarkLight(),
        ],
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            DefaultCButton(route: '/help/notes', text: 'Notas Históricas'),
            SizedBox(height: 30,),
            DefaultCButton(route: '/help/htp', text: 'Como Jogar'),
          ],
        ),
      ),
    );
  }
}
