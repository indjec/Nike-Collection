import 'package:flutter/material.dart';

Widget customIconButtom(
    {Widget child,
    Function onTap,
    Color splashColor,
    Color backgroundColor,
    BorderRadius radius}) {
  return InkWell(
    borderRadius: radius,
    splashColor: splashColor,
    onTap: onTap,
    child: Ink(
        padding: EdgeInsets.all(15),
        width: 50,
        height: 50,
        decoration: new BoxDecoration(
          color: backgroundColor,
          borderRadius: radius,
        ),
        child: child),
  );
}
