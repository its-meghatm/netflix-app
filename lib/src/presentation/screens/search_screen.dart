import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/src/utils/constants.dart';
import 'package:netflix/src/utils/utils.dart';

import '../widgets/search_idle.dart';
import '../widgets/search_result.dart';
import '../widgets/tittle.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              pop(context) ;
            }),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 13.0, bottom: 13, right: 10),
            child: Container(
              height: 18,
              width: 25,
              color: Colors.pink,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
              backgroundColor: Colors.grey.withOpacity(0.5),
              prefixIcon: const Icon(
                CupertinoIcons.search,
                color: Colors.grey,
              ),
              suffixIcon: const Icon(CupertinoIcons.mic, color: Colors.white),
              style: TextStyle(color: Colors.white),
            ),
            kHeight,
            Expanded(child: SearchResultWidget()),
          ],
        ),
      ),
    );
  }
}
