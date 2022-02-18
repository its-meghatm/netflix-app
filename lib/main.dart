import 'package:flutter/material.dart';
import 'package:netflix/src/presentation/screens/spalash_screen.dart';
import 'package:netflix/src/presentation/utils/custom_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix Clone',
      theme: darkTheme,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
