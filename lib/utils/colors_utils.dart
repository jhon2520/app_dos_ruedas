import 'dart:math';

import 'package:flutter/material.dart';


class ColorsUtils {

  
  static Color getRandomColor(){

    Color color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    return color;

}

}
