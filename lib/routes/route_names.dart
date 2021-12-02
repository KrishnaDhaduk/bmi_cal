import 'package:flutter/material.dart';
import 'package:new_bmi/bmi_main.dart';
import 'package:new_bmi/modules/result/resultpage.dart';
import 'package:new_bmi/routes/routes.dart';

class NavigationServices {
  NavigationServices(this.context);

  final BuildContext context;

  Future<dynamic> _pushMaterialPageRoute(Widget widget,
      {bool fullscreenDialog: false}) async {
    return await Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => widget, fullscreenDialog: fullscreenDialog),
    );
  }

  void gotoSplashScreen() {
    Navigator.pushNamedAndRemoveUntil(
        context, RoutesName.Splash, (Route<dynamic> route) => false);
  }

  Future<dynamic> gotoBMIMainScreen() async {
    return await _pushMaterialPageRoute(BMIMain(), fullscreenDialog: true);
  }

  Future<dynamic> gotoResultpageScreen() async {
    // ignore: missing_required_param
    return await _pushMaterialPageRoute(Resultpage(), fullscreenDialog: true);
  }
}
