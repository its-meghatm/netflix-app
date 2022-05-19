
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/src/utils/utils.dart';

import '../../utils/constants.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/new_hot_widget.dart';
import '../widgets/new_hots_card.dart';
import '../widgets/text_button.dart';

class NewsHotScreen extends StatelessWidget {
  const NewsHotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(100),
                child: AppBar(
                  // child: Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Row(
                  //     children: [
                  //       Text("New & Hot",
                  //         style: TextStyle(
                  //             fontSize: 22,
                  //             fontWeight: FontWeight.bold
                  //         ),),
                  //       Spacer(),
                  //       Icon(Icons.search),
                  //       kWidth,
                  //       Container(height: 20,
                  //         width: 20,
                  //         color: Colors.pink,),
                  //       kWidth,
                  //     ],
                  //   ),
                  // ),
                  title: Text("New & Hot",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold
                          ),),
                  actions: [
                          Icon(Icons.notifications),
                          kWidth,
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0,bottom: 12),
                            child: Container(
                              height: 20,
                              width: 25,
                              color: Colors.pink,),
                          ),
                          kWidth,
                  ],
                  bottom: TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.white,
                    labelStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),
                    isScrollable: true,
                    tabs: [
                      Tab(
                        text: "🍿 Coming Soon",
                      ),
                      Tab(
                        text: "👀 Everyone's watches",
                      )
                    ],
                    indicator: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        color: Colors.white
                    ),
                  ),
                ),
              ),
          body: TabBarView(
            children: <Widget>[
              _buildComingSoon(),
              _buildEveryoneWatching(),
            ],
          ),
         ),
      ),
    );
  }

  _buildComingSoon() {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: ListView(
        children:
          List.generate(10, (index) => NewHotWidget()),
      ),
    );
  }

  _buildEveryoneWatching() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: ListView(
        children:
          List.generate(10, (index) => NewHotCard())
        
      ),
    );

  }
}
