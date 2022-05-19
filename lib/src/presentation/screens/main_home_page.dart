import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/src/presentation/screens/download_screen.dart';
import 'package:netflix/src/presentation/screens/fast_laugh_screen.dart';
import 'package:netflix/src/presentation/screens/home_screen.dart';
import 'package:netflix/src/presentation/screens/new_hots_screen.dart';
import 'package:netflix/src/presentation/screens/search_screen.dart';

import '../widgets/bottam_nav.dart';
import 'games_screen.dart';
import 'onboarding_Screen.dart';

class MainHomePage extends StatelessWidget {
  MainHomePage({Key? key}) : super(key: key);
  final _pages = [
    HomeScreen(),
    GameScreen(),
    NewsHotScreen(),
    DownloadScreen(),
    DownloadScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ValueListenableBuilder(
        valueListenable: indexChange,
        builder: (context, int indexValue, _) {
          return _pages[indexValue];
        },
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
