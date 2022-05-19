import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  final String text;
  final IconData iconData;
  const TextButtonWidget({Key? key,required this.iconData,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(onPressed: (){},
      icon: Icon(iconData,
        color: Colors.black,),
      label: Text(text,
        style: TextStyle(color: Colors.black,
            fontWeight: FontWeight.bold),),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white)
      ),);
  }
}
