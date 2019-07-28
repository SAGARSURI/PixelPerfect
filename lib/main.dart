import 'package:flutter/material.dart';
import 'src/ui/homescreen/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Color(0xff3A3B56),
          cardColor: Color(0xff40415D),
          scaffoldBackgroundColor: Color(0xff3A3B56)),
      home: HomeScreen(),
    );
  }
}
