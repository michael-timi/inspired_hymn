import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inspired_gospel_hymn/view/menu_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inspired Gospel Hymn',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff392850),
        accentColor: Color(0xFFFEF9EB),
        backgroundColor: Color(0xff392850),
        textTheme: TextTheme(
          bodyText1: GoogleFonts.openSans(),
          bodyText2: GoogleFonts.openSans(),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MenuPage(),
    );
  }
}
