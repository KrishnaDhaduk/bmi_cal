import 'package:flutter/material.dart';

class CommonCard extends StatefulWidget {
  final Color color;
  final double radius;
  final Widget child;

  const CommonCard({Key key, this.color, this.radius = 16, this.child})
      : super(key: key);
  @override
  _CommonCardState createState() => _CommonCardState();
}

class _CommonCardState extends State<CommonCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Theme.of(context).dividerColor,
      elevation: 3,
      color: widget.color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(widget.radius),
        side: BorderSide(color: Colors.black12, width: 0.7),
      ),
      child: widget.child,
    );
  }
}
