import 'package:flutter/material.dart';
import 'package:nave_app/infrastructure/constants/colors.dart';


AppBar makeTopBar({required String title, List<Widget>? widgets, Color? bgColor, double elevation = 0.1}) {
  return AppBar(
    elevation: elevation,
    centerTitle: true,
    foregroundColor: ColorConstants.kWhiteColor,
    backgroundColor: bgColor,
    title: Text(title,style: const TextStyle(
       color: ColorConstants.kWhiteColor
    ),),
    actions: widgets,
  );
}

AppBar makeHomeTopBar({required String title, List<Widget>? widgets}){
  return makeTopBar(title: title,
      bgColor: ColorConstants.kPrimaryColor,
      widgets: widgets);
}