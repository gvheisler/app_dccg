import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String route;
  final String text;
  const DefaultButton({Key? key, required this.route, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: (){
        Navigator.of(context).pushNamed(route);
      },
      child: (
          Text(text, style: const TextStyle(color: Colors.black),)
      ),
    );
  }
}
