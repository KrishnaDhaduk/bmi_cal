import 'package:flutter/material.dart';
import 'package:new_bmi/common_widgets/common_card.dart';
import 'package:new_bmi/common_widgets/tap_effect.dart';
import 'package:new_bmi/constants/constant.dart';

class CommonButton extends StatelessWidget {
  final VoidCallback onTap;
  final EdgeInsetsGeometry padding;
  final String buttonText;
  final Widget buttonTextWidget;
  final Color textColor, backgroundColor;
  final bool isClickable;
  final double radius;
  const CommonButton({
    Key key,
    this.onTap,
    this.buttonText,
    this.buttonTextWidget,
    this.textColor: Colors.white,
    this.backgroundColor,
    this.padding,
    this.isClickable = true,
    this.radius = 24,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.only(),
      child: TapEffect(
        isClickable: isClickable,
        onClick: onTap ?? () {},
        child: SizedBox(
          height: 60,
          child: CommonCard(
            radius: radius,
            color: backgroundColor ?? bottomcontainercolor,
            child: Center(
              child: buttonTextWidget ??
                  Text(
                    buttonText ?? "",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
