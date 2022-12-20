import 'package:app_dccg/misc/buttons.dart';
import 'package:flutter/material.dart';

class ManualPage extends StatelessWidget {
  const ManualPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manual'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const[
            DefaultButton(route: '/book', text: 'Livro de Regras'),
            SizedBox(height: 40,),
            DefaultButton(route: '/notes', text: 'Notas Históricas'),
          ],
        ),
      ),
    );
  }
}
