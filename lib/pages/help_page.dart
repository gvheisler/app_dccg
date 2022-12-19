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

    );
  }
}
