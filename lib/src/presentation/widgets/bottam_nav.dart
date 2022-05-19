import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
ValueNotifier<int> indexChange=ValueNotifier(0);

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexChange,
        builder:(context,int newIndexValue ,_){
        return BottomNavigationBar(
  elevation: 0,
  backgroundColor: Colors.black,
  unselectedItemColor: Colors.grey[600],
  type: BottomNavigationBarType.fixed,
  items: const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.sports_esports),
      label: 'Games',

    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.video_collection_outlined),
      label: 'New & Hot',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.emoji_emotions),
      label: 'Fast Laughs',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.download),
      label: 'Downloads',
    ),
  ],
  currentIndex: newIndexValue,
  selectedItemColor: Colors.white,
  iconSize: 24,
  selectedFontSize: 10,
  unselectedFontSize: 10,
  onTap: (index){
    indexChange.value=index;
  },
);
    } );
  }
}
