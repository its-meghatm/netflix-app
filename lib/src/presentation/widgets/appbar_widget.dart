import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../../utils/utils.dart';
import '../screens/search_screen.dart';

class AppBarWidget extends StatelessWidget {
  final String title;

  const AppBarWidget({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),),
        Spacer(),
        IconButton(onPressed: () {
          push(
              context, SearchScreen());
        },
        icon: Icon(Icons.search)),
        kWidth,
        Container(height: 20,
          width: 20,
          color: Colors.pink,),
        kWidth,      ],
    );
  }
}
