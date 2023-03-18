import 'package:flutter/material.dart';
import 'package:nave_app/infrastructure/constants/colors.dart';

SizedBox makeMenuCard({required String text, required IconData iconData, double height = 150, double width = 150}){
  return SizedBox(
      height: height,
      width: width,
      child: Card(
        shadowColor: ColorConstants.kWhiteColor,
        elevation: 8.0,
        child: Container(
          decoration: BoxDecoration(
              color: ColorConstants.kWhiteColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black54, // shadow color
                  blurRadius: 6, // shadow radius
                  offset: Offset(2, 3), // shadow offset
                  spreadRadius:0.1, // The amount the box should be inflated prior to applying the blur
                  blurStyle: BlurStyle.normal // set blur style
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(iconData, color: ColorConstants.kPrimaryDarkColor,
                   size: width/3,),

                Text(text,
                  style: const TextStyle(fontWeight: FontWeight.bold,
                  color: ColorConstants.kPrimaryDarkColor, fontSize: 24),)
              ],

          ),
        ),
  ));
}