import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/src/presentation/widgets/appbar_widget.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(title:
        "Downloads",),
      ),
      body: ListView(
        children: [

        ],
      ),
    );
  }
}
