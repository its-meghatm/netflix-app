import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3),
      height: 210,
      width: 130,
      decoration: BoxDecoration(
          borderRadius: kRadius5,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://www.themoviedb.org/t/p/w440_and_h660_face/8tjQ20uaIAkNDXAOUumkT2qQnGR.jpg"))),
    );
  }
}
