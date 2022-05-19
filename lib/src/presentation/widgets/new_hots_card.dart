import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class NewHotCard extends StatelessWidget {
  const NewHotCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 180,
              decoration: BoxDecoration(
                  borderRadius: kRadius,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://www.themoviedb.org/t/p/w1066_and_h600_bestv2/ewUqXnwiRLhgmGhuksOdLgh49Ch.jpg"))),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 12, 10),
              child: Row(
                children: [
                  Flexible(
                    child: Text(
                      "Adam Project",
                      overflow: TextOverflow.visible,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Icon(Icons.notifications_none),
                      Text(
                        "Remind me",
                        style: TextStyle(
                            fontSize: 10, color: Colors.grey.shade300),
                      )
                    ],
                  ),
                  kWidth,
                  kWidth,
                  Column(
                    children: [
                      Icon(Icons.info_outline),
                      Text(
                        "info",
                        style: TextStyle(
                            fontSize: 10, color: Colors.grey.shade300),
                      )
                    ],
                  ),
                ],
              ),
            ),
            kHeight,
            Text(
              "Coming on Thursday",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            kHeight,
            Text(
              "Introduces us Adam Reedswho is being pursued in the year 2050, after having stolen a time travel ship, in order to return to 2018 and discover the whereabouts of his passion, Laurasuddenly disappeared.",
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
            kHeight,
          ],
        ),
      ),
    );
  }
}
