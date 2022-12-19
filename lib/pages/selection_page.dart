import 'package:app_dccg/misc/buttons.dart';
import 'package:flutter/material.dart';

class SelectionScreen extends StatelessWidget {
  const SelectionScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Escolha a história que deseja jogar"),
        actions: const[
          SwitchDarkLight(),
        ],
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: OutlinedButton(
                onPressed: (){
                  Navigator.of(context).pushReplacementNamed('/home');
                },
                child: (
                    Text('O Assassinato do\nprofessor Miguel', style: const TextStyle(color: Colors.black),textAlign: TextAlign.center,)
                ),
              ),
            ),
            const SizedBox(height: 40,),
            const DefaultButton(route: '', text: 'História 2',),
            const SizedBox(height: 40,),
            const DefaultButton(route: '', text: 'História 3',),
          ],
        ),
      ),
    );
  }
}
