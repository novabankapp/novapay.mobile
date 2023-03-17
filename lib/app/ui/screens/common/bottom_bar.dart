

import 'package:flutter/material.dart';

Container makeBottomBar({ required List<Widget> widgets, Color? bgColor, double? height}){
  return Container(
    height: height ?? 55.0,
    child: BottomAppBar(
      color: bgColor ?? Color.fromRGBO(58, 66, 86, 1.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: widgets,
      ),
    ),
  );
}