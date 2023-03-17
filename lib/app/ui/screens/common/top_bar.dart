import 'package:flutter/material.dart';
import 'package:nave_app/infrastructure/constants/colors.dart';


AppBar makeTopBar({required String title, required List<Widget> widgets, Color? bgColor, double elevation = 0.1}) {
  return AppBar(
    elevation: elevation,
    backgroundColor: bgColor,
    title: Text(title,style: const TextStyle(
       color: ColorConstants.kPrimaryColor
    ),),
    actions: widgets,
  );
}