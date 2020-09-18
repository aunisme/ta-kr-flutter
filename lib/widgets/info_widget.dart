import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  final double iconSize;

  const Info({
    Key key,
    @required this.icon,
    @required this.onPressed,
    @required this.iconSize,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(icon),
      iconSize: iconSize,
    );
  }
}
