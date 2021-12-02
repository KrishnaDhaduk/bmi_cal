import 'package:flutter/material.dart';

class Reusablecard extends StatelessWidget {
  Reusablecard({@required this.color, this.cardchild, this.onpress});
  final Color color;
  final Widget cardchild;
  final Function onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: cardchild,
        height: 120,
        width: double.infinity,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
