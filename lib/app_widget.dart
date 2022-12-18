import 'package:app_dccg/app_controller.dart';
import 'package:app_dccg/search_page.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            brightness: AppController.instance.isDarkTheme ? Brightness.dark : Brightness.light,
            outlinedButtonTheme: OutlinedButtonThemeData(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.teal[100],
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                textStyle: const TextStyle(fontSize: 50),
                elevation: 20,
                shadowColor: Colors.black,
                side: BorderSide(color: Colors.black,width: 2)
              )
            ),
          ),
          home: const SearchPage(),
        );
      },
    );
  }
}
