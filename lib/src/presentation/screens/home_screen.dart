import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/src/presentation/screens/search_screen.dart';
import 'package:netflix/src/presentation/widgets/main_card.dart';
import 'package:netflix/src/utils/constants.dart';
import 'package:netflix/src/utils/utils.dart';

import '../widgets/background_image.dart';
import '../widgets/main_title_card.dart';
import '../widgets/number_card.dart';
import '../widgets/tittle.dart';

ValueNotifier<bool> scrollValue = ValueNotifier(true);

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: ValueListenableBuilder(
            valueListenable: scrollValue,
            builder: (BuildContext context, index, _) {
              return NotificationListener<UserScrollNotification>(
                onNotification: (notification) {
                  final ScrollDirection direction = notification.direction;
                  if (direction == ScrollDirection.reverse) {
                    scrollValue.value = false;
                  } else if (direction == ScrollDirection.forward) {
                    scrollValue.value = true;
                  }
                  return true;
                },
                child: Stack(
                  children: [
                    ListView(
                      children: [
                        BackgroundImage(),
                        kHeight,
                        MainTitleCard(
                          tittle: 'Top Rated',
                        ),
                        kHeight,
                        MainTitleCard(
                          tittle: 'Trending Now',
                        ),
                        kHeight,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Tittle(
                              tittle: "Top 10 TV Shows in India Today",
                            ),
                            kHeight,
                            LimitedBox(
                              maxHeight: 180,
                              child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: List.generate(
                                      10,
                                      (index) => NumberCard(
                                            index: index,
                                          ))),
                            ),
                          ],
                        ),
                        kHeight,
                        MainTitleCard(
                          tittle: 'South Indian Movies',
                        ),
                        kHeight,
                        MainTitleCard(
                          tittle: 'K-Dramas',
                        ),
                      ],
                    ),
                    scrollValue.value == true
                        ? AnimatedContainer(
                            height: 100,
                            width: double.infinity,
                            color: Colors.black.withOpacity(0.3),
                            duration: Duration(milliseconds: 1000),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image.network(
                                      "https://pngimg.com/uploads/netflix/netflix_PNG8.png",
                                      width: 50,
                                      height: 50,
                                    ),
                                    Spacer(),
                                    Icon(Icons.cast),
                                    kWidth,
                                    IconButton(
                                      icon: Icon(Icons.search),
                                      onPressed: () {
                                        push(
                                            context, SearchScreen());
                                      },
                                    ),
                                    kWidth,
                                    Container(
                                      height: 20,
                                      width: 20,
                                      color: Colors.pink,
                                    ),
                                    kWidth,
                                  ],
                                ),
                                kHeight,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "TV Shows",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Movies",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Categories",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ))
                        : kHeight,
                  ],
                ),
              );
            },
          ),
        ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.white.withOpacity(0.8),
        onPressed: () {
          Navigator.pop(context);
        },
        label: Text("Surprise Me",
        style: TextStyle(color: Colors.black,
            fontWeight: FontWeight.bold),),
        icon: Icon(
          Icons.bluetooth_connected_rounded,
          color: Colors.pink,
        ),
      ),

      // floatingActionButtonLocation:
      // FloatingActionButtonLocation.centerFloat,
    );
  }
}
