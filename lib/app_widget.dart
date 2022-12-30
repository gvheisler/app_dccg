import 'package:app_dccg/controller/app_controller.dart';
import 'package:app_dccg/pages/game/battle_page.dart';
import 'package:app_dccg/pages/unused/book_page.dart';
import 'package:app_dccg/pages/game/challenge_page.dart';
import 'package:app_dccg/pages/menu/game_page.dart';
import 'package:app_dccg/pages/general/help_page.dart';
import 'package:app_dccg/pages/menu/home_page.dart';
import 'package:app_dccg/pages/menu/htp_page.dart';
import 'package:app_dccg/pages/unused/manual_page.dart';
import 'package:app_dccg/pages/menu/notes_page.dart';
import 'package:app_dccg/pages/game/search_page.dart';
import 'package:app_dccg/pages/preface/selection_page.dart';
import 'package:flutter/material.dart'; 

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context){
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            brightness: AppController.instance.isDarkTheme ? Brightness.dark : Brightness.light,
            outlinedButtonTheme: OutlinedButtonThemeData(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                backgroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 50, color: Colors.black),
                side: const BorderSide(color: Colors.black, width: 2)
              )
            ),
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.blueGrey,
              titleTextStyle: TextStyle(fontSize: 25, color: Colors.white)
            )
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => SelectionScreen(),
            '/home': (context) => HomePage(),
            '/game': (context) => GamePage(),
            '/search': (context) => SearchPage(),
            '/manual': (context) => ManualPage(),
            '/help/htp': (context) => HtpPage(),
            '/help': (context) => HelpPage(),
            '/help/notes': (context) => NotesPage(),
            '/book': (context) => BookPage(),
            '/game/battle': (context) => BattlePage(),
            '/game/challenge': (context) => ChallengePage(),
          },
        );
      },
    );
  }
}
