import 'package:url_launcher/url_launcher.dart';
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
        title: Text('DCCG Game', style: TextStyle(fontSize: 30, color: Colors.black),),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.question_mark),
        onPressed: (){

        },
      ),
      body: Center(
        child: GestureDetector(
          child: Text("Test App", style: TextStyle(fontSize: 50, color: Colors.red[900]),),
          onTap: (){
            print('teste');
          },
        )
      ),
    );
  }
}
