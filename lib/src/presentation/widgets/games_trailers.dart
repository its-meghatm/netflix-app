import 'package:flutter/material.dart';
import 'package:netflix/src/presentation/widgets/tittle.dart';

import '../../utils/constants.dart';

class GamesTrailers extends StatelessWidget {
  const GamesTrailers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kHeight,
          Container(
            width: double.infinity,
            // height: double.infinity,
            child: ListView(
              shrinkWrap: true,
              //reverse: true,
              children: List.generate(
                10,
                (index) => Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 180,
                      decoration: BoxDecoration(
                          borderRadius: kRadius5,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://www.androidauthority.com/wp-content/uploads/2021/11/Android-Apps-Weekly-PUBG-New-State-screenshot.jpg"))),
                    ),
                    kHeight,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: kRadius,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://thegamingjudge.com/wp-content/uploads/2020/10/pam2.png"))),
                        ),
                        kWidth,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Patience, card solitaire games",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.fade,
                              maxLines: 1,
                              softWrap: false,
                            ),
                            Text(
                              "Card game",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    ),
                    kHeight,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
