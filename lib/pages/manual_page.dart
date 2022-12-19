import 'package:flutter/material.dart';

class ManualPage extends StatelessWidget {
  const ManualPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manual', style: TextStyle(fontSize: 30, color: Colors.black),),
      ),
    );
  }
}
