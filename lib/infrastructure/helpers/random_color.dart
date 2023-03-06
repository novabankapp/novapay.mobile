import 'dart:math';

import 'package:flutter/material.dart';

class RandomColorHelper {

  static Color getColor() {
    Random random = Random();
    return Color.fromARGB(random.nextInt(300), 255,
        random.nextInt(300), random.nextInt(300));
  }
}