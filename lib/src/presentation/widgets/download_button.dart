import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DownloadButton extends StatelessWidget {
  final String text;
  final double? width;
  final Color bColor;
  final double tSize;
  const DownloadButton(
      {Key? key,
      required this.text,
      required this.width,
      required this.bColor,
      required this.tSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MaterialButton(
          padding: EdgeInsets.all(0),
          minWidth: width,
          color: bColor,
          onPressed: () {},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: tSize,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
