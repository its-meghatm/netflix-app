import 'package:flutter/cupertino.dart';
import 'package:netflix/src/presentation/widgets/tittle.dart';
import 'package:netflix/src/utils/constants.dart';

import 'main_card.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Tittle(
          tittle: 'Movies & TV',
        ),
        kHeight,
        Expanded(
            child: GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 3,
                childAspectRatio: 1 / 1.4,
                children: List.generate(20, (index) {
                  return MainCard();
                })))
      ],
    );
  }
}
