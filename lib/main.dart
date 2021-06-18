import 'package:bottom_app_custom/pages/home_page.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(EntryApp());
}

class EntryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buttom App Custom',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          buttonTheme: ButtonThemeData(shape: CircleBorder())),
      home: HomePage(),
    );
  }
}
