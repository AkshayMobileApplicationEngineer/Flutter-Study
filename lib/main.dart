import 'package:flutter/material.dart';

import 'home.dart';
import 'mainScreen.dart';

void  main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/home': (context) => MainScreen(),
      },
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
    );
  }
}