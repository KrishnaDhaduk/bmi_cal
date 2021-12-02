import 'package:flutter/material.dart';
import 'package:new_bmi/constants/constant.dart';

class Iconcontent extends StatelessWidget {
  Iconcontent({this.icon, this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 40,
        ),
        SizedBox(height: 10),
        Text(
          label,
          style: TextStyle(
              color: islight ? Colors.black : Color(0xff8d8e98), fontSize: 16),
        )
      ],
    );
  }
}
