import 'package:flutter/material.dart';

class HtpPage extends StatelessWidget {
  const HtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Como Jogar'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){

        },
        icon: const Icon(Icons.picture_as_pdf),
        label: const Text("Manual"),
      ),
      body: const Center(
          child: SizedBox(
            height: 500,
            width: 350,
            child: Text('Pellentesque dignissim nisl quis ante fringilla, eget mattis neque feugiat. Suspendisse pretium nec dolor nec aliquet. Aliquam nec magna in arcu eleifend pellentesque et congue mauris. In sapien odio, fermentum id diam a, sollicitudin rutrum quam. Nunc massa elit, vestibulum at urna ut, lobortis ornare ex. Quisque id lectus dictum, tempor est vel, congue mauris. Nulla pharetra consectetur dolor id venenatis. Proin aliquet cursus libero vitae varius. Quisque at luctus elit, fermentum sagittis enim.', textAlign: TextAlign.center, style: TextStyle(fontSize: 20),))),
    );
  }
}
