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
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.question_mark),
        onPressed: (){
          
        },
      ),
      body: const Align(
        alignment: Alignment.topRight,
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
