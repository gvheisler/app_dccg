import 'package:flutter/material.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notas Históricas'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){

        },
        icon: Icon(Icons.picture_as_pdf),
        label: Text("Baixar"),
      ),
    );
  }
}
