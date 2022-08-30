import 'package:designs/screens/basic_design.dart';
import 'package:designs/screens/home_screen.dart';
import 'package:designs/screens/scroll_desgin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //mantener el status bar en light mode
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light); 

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_screen',
      routes: {
        'basic_design': (_) => BasicDesignScreen(),
        'scroll_design': (_) => ScrollDesignScreen(),
        'home_screen': (_) => HomeScreen()
      },
    );
  }
}
