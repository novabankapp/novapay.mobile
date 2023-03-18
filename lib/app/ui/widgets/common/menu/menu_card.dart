import 'package:flutter/material.dart';

SizedBox makeMenuCard({required String text, required IconData iconData, double height = 150, double width = 150}){
  return SizedBox(
      height: height, width: width,
      //square box; equal height and width so that it won't look like oval
      child: Card(
        shadowColor: const Color.fromARGB(255, 255, 255, 255),
    elevation: 8.0,
    child: Container(
      decoration: const BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData, color: Colors.white, size: width/3,),

            Text(text,
              style: const TextStyle(fontWeight: FontWeight.bold,
              color: Colors.white, fontSize: 24),)
          ],

      ),
    ),
  ));
}