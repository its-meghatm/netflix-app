import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/src/presentation/widgets/tittle.dart';

import '../../utils/constants.dart';

class GameCard extends StatelessWidget {
  const GameCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Tittle(
          tittle: "All Mobile Games",
        ),
        kHeight,
        Container(
          height: 170,
          // width: 110,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(10, (index) => Card())),
        ),
      ],
    );
  }
}

class Card extends StatelessWidget {
  const Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          height: 110,
          width: 110,
          decoration: BoxDecoration(
              borderRadius: kRadius,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://cdn.givemesport.com/wp-content/uploads/2022/03/roblox-4-1200x1200-c-default.jpeg"))),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 3),
          child: Text(
            "Roblox",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            "Action",
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
