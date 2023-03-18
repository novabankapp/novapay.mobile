import 'package:flutter/material.dart';
import 'package:nave_app/infrastructure/constants/colors.dart';


AppBar makeTopBar({required String title, required List<Widget> widgets, Color? bgColor, double elevation = 0.1}) {
  return AppBar(
    elevation: elevation,
    centerTitle: true,
    backgroundColor: bgColor,
    title: Text(title,style: const TextStyle(
       color: ColorConstants.kWhiteColor
    ),),
    actions: widgets,
  );
}

AppBar makeHomeTopBar({required String title}){
  return makeTopBar(title: title,
      bgColor: ColorConstants.kPrimaryColor,
      widgets: <Widget>[
        IconButton(
          color: ColorConstants.kWhiteColor,
          icon: const Icon(Icons.list),
          onPressed: () {},
        )
      ]);
}