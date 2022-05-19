import 'package:flutter/cupertino.dart';

class Tittle extends StatelessWidget {
  final String tittle;
  const Tittle({Key? key, required this.tittle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      tittle,
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    );
  }
}
