import 'package:flutter/material.dart';

Widget customIconButtom(
    {Widget child, Function onTap, Color splashColor, Color backgroundColor}) {
  return InkWell(
    borderRadius: BorderRadius.circular(12),
    splashColor: splashColor,
    onTap: onTap,
    child: Ink(
        padding: EdgeInsets.all(15),
        width: 50,
        decoration: new BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: child),
  );
}
