import 'package:flutter/cupertino.dart';
import 'package:netflix/src/presentation/widgets/tittle.dart';
import 'package:netflix/src/utils/constants.dart';

import 'main_card.dart';

class MainTitleCard extends StatelessWidget {
  final String tittle;
  const MainTitleCard({Key? key, required this.tittle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Tittle(
          tittle: tittle,
        ),
        kHeight,
        LimitedBox(
          maxHeight: 180,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(10, (index) => MainCard())),
        ),
      ],
    );
  }
}
