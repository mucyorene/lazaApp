import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class AppBarCustom {
  double elevation;
  Color backgroundColor;
  double leadingWidth;
  var leading;
  int toolbarHeight;
  var title;
  List<Widget> actions;

  AppBarCustom(
      {required this.elevation,
      required this.toolbarHeight,
      required this.backgroundColor,
      required this.leadingWidth,
      required this.leading,
      required this.title,
      required this.actions});

  static PreferredSizeWidget appBarCustom(
      double elevation,
      Color backgroundColor,
      bool centerTitled,
      double leadingWidth,
      double toolbarHeight,
      leading,
      title,
      actions) {
    return AppBar(
      elevation: elevation,
      backgroundColor: backgroundColor,
      centerTitle: true,
      toolbarHeight: toolbarHeight,
      leadingWidth: leadingWidth,
      leading: leading,
      title: title,
      actions: actions,
    );
  }
}
