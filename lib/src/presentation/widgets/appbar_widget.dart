import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final String title;

  const AppBarWidget({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title),
        Icon(Icons.cast),
      ],
    );
  }
}
