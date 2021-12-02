import 'package:flutter/material.dart';
import 'package:new_bmi/constants/constant.dart';

bool islight = true;

class DrawerListtile extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback ontap;

  final IconData icon;
  const DrawerListtile({
    this.title,
    this.subtitle,
    this.ontap,
    this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: ListTile(
          title: Text(title,
              style: resulttext1textstyle.copyWith(
                  color: islight ? Colors.black : Colors.white)),
          subtitle: Text(subtitle, style: resulttext3textstyle),
          trailing: Icon(
            icon,
            color: Color(0xffEB0577),
            size: 26,
          ),
        ),
      ),
    );
  }
}
