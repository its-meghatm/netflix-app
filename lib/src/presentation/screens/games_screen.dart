import 'package:flutter/material.dart';
import 'package:netflix/src/utils/utils.dart';

import '../../utils/constants.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/game_title_card.dart';
import '../widgets/games_trailers.dart';
import '../widgets/tittle.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: "Games",
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kHeight,
              Container(
                width: double.infinity,
                height: screenHeight(context, dividedBy: 1.8),
                decoration: BoxDecoration(
                    borderRadius: kRadius,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://www.itl.cat/pngfile/big/229-2291438_super-mario-wallpaper-iphone-x.jpg"))),
              ),
              kHeight,
              GameCard(),
              Tittle(
                tittle: "Mobile Games Trailers",
              ),
              GamesTrailers()
            ],
          ),
        ),
      ),
    );
  }
}
