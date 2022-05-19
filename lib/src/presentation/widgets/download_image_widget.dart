import 'package:flutter/cupertino.dart';

class ImageWidget extends StatelessWidget {
  final String image;
  const ImageWidget({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: const AlwaysStoppedAnimation(-25 / 360),
      child: Container(
        height: 205,
        width: 140,
        margin: EdgeInsets.only(right: 130, bottom: 50),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: NetworkImage(
                image,
              ),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
