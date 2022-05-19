import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class NumberCard extends StatelessWidget {
  final int index;
  const NumberCard({Key? key,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              height: 150,
              width: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              height: 210,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: kRadius,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://imageio.forbes.com/specials-images/imageserve/61116cea2313e8bae55a536a/-Dune-/0x0.jpg?fit=bounds&format=jpg&width=960"))),
            ),
          ],
        ),
        Positioned(
          bottom: -13,
          left: 8,
          child: BorderedText(
            strokeWidth: 10.0,
              strokeColor: Colors.white,
              child: Text("${index+1}",
              style: TextStyle(fontSize: 90,
                color: Colors.black
              ),)),
        )

      ],
    );
  }
}
