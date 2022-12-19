import 'package:app_dccg/controller/app_controller.dart';
import 'package:app_dccg/pages/game_page.dart';
import 'package:app_dccg/pages/help_page.dart';
import 'package:app_dccg/pages/home_page.dart';
import 'package:app_dccg/pages/htp_page.dart';
import 'package:app_dccg/pages/manual_page.dart';
import 'package:app_dccg/pages/search_page.dart';
import 'package:app_dccg/pages/selection_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

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
                textStyle: const TextStyle(fontSize: 50, fontFamily: 'Impact'),
                elevation: 20,
                shadowColor: Colors.black,
                side: const BorderSide(color: Colors.black,width: 2)
              )
            ),
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => SelectionScreen(),
            '/home': (context) => HomePage(),
            '/game': (context) => GamePage(),
            '/search': (context) => SearchPage(),
            '/manual': (context) => ManualPage(),
            '/htp': (context) => HtpPage(),
            '/help': (context) => HelpPage(),
          },
        );
      },
    );
  }
}
