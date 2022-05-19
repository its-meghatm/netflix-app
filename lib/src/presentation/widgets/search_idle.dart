import 'package:flutter/material.dart';
import 'package:netflix/src/presentation/widgets/tittle.dart';
import 'package:netflix/src/utils/constants.dart';

import '../../utils/utils.dart';

class SearchIdle extends StatelessWidget {
  const SearchIdle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Tittle(
          tittle: 'Top Searches',
        ),
        kHeight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => TopSearchItems(),
              separatorBuilder: (context, index) => kHeight5,
              itemCount: 10),
        )
      ],
    );
  }
}

class TopSearchItems extends StatelessWidget {
  const TopSearchItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(221, 39, 38, 38),
      child: Row(
        children: [
          Container(
            height: screenHeight(context, dividedBy: 9),
            width: screenWidth(context, dividedBy: 2.6),
            child: Image.network(
              "https://www.themoviedb.org/t/p/w1066_and_h600_bestv2/2IUZ9PlHmUXCVB3SQkFgpQ3WTKW.jpg",
              fit: BoxFit.cover,
            ),
          ),
          kWidth,
          Text(
            "Heartstopper ",
            style: TextStyle(
              fontSize: 16,
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
