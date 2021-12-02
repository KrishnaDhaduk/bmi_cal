import 'package:flutter/material.dart';

class IconMenuButton extends StatelessWidget {
  const IconMenuButton({
    Key key,
    @required GlobalKey<ScaffoldState> scaffoldKey,
  })  : _scaffoldKey = scaffoldKey,
        super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.menu,
        size: 30,
      ),
      onPressed: () {
        _scaffoldKey.currentState?.openDrawer();
      },
    );
  }
}
