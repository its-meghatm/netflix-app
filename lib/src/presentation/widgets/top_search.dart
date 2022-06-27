import 'package:flutter/material.dart';
import 'package:netflix/src/utils/utils.dart';

import '../../utils/constants.dart';

class TopSearchItems extends StatelessWidget {
  final String title;
  final String imaUrl;
  const TopSearchItems({Key? key, required this.imaUrl, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(221, 39, 38, 38),
      child: Row(
        children: [
          Container(
            height: screenHeight(context, dividedBy: 9),
            width: screenWidth(context, dividedBy: 2.6),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(imaUrl))),
          ),
          kWidth,
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Spacer(),
          Icon(
            Icons.play_circle_outlined,
            size: 35,
          ),
          kWidth,
        ],
      ),
    );
  }
}
