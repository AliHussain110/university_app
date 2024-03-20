import 'package:flutter/material.dart';
import 'package:university_project/widgets/homepage/homepage.dart';
import 'package:university_project/widgets/settings/password.dart';
import '/widgets/splashscreen/splashscreen.dart';

import '/widgets/login/login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'Univeristy App',
      home: SplashScreen(),
      routes: {
        '/main': (context) => LoginPage(),
        // '/home':(context) => HomePage(_index),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
