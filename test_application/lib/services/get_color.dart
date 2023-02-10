import 'dart:math' as math;
import 'package:flutter/material.dart';


class GetColorsCount{

  Color getColor(){

    Color generatedColor = Color.fromRGBO(
        math.Random().nextInt(255),
        math.Random().nextInt(255),
        math.Random().nextInt(255),
        1);

    return generatedColor;
  }


}
