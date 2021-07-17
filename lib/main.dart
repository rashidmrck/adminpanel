import 'package:adminpanel/Screens/main/main_screen.dart';
import 'package:adminpanel/constants.dart';
import 'package:adminpanel/controller/menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Admin',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
      home: ChangeNotifierProvider<MenuController>.value(
        value: MenuController(),
        child: MainScreen(),
      ),
    );
  }
}
