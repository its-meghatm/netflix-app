import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmartDownloads extends StatelessWidget {
  const SmartDownloads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(
            Icons.settings,
            size: 15,
            color: Colors.grey,
          ),
          Text(
            "Smart Downloads",
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
