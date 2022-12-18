

import 'package:app_dccg/buttons.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final String codeRequired = 'cod123';
  String codeGiven = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(80.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  onChanged: (text){
                    codeGiven = text;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Código',
                    labelStyle: TextStyle(fontSize: 30),
                    border: OutlineInputBorder(),
                  ),
                ),
              const SizedBox(height: 10),
              OutlinedButton(
                onPressed: (){
                  if(codeGiven == codeRequired){
                    print('Codigo aceito');
                  }
                },
                child: (
                    Text('Buscar', style: const TextStyle(color: Colors.black),)
                ),
              ),
              ],
            ),
          )
        ),
      ),
    );
  }
}
