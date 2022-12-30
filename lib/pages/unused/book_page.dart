import 'package:flutter/material.dart';

class BookPage extends StatelessWidget {
  const BookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Livro de Regras"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){

        },
        icon: const Icon(Icons.picture_as_pdf),
        label: const Text("Baixar"),
      ),
    );
  }
}
