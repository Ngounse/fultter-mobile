import 'package:flutter/material.dart';
import 'package:my_library/screens/calenda.dart';
import 'screens/home_screen.dart';
import 'screens/book_list_screen.dart';

void main() {
  runApp(MyLibrary());
}

class MyLibrary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Library App',
      theme: ThemeData(primarySwatch: Colors.blue),
      // home: HomeScreen(),
      home: CalendarPage(),
    );
  }
}
