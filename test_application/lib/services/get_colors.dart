// ignore_for_file: public_member_api_docs

import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:test_application/utilities/constant.dart';

// initialize class for method getColor
class GetColors {
  // get method random color
  Color getRNDColor() {
    // create and add to color type variable random received random color
    Color generatedColor;
    Color? previousColor;
    // do while to exclude the repetition of 2 identical colors in a row
    do {
      generatedColor = Color.fromRGBO(
        math.Random().nextInt(kRedColor),
        math.Random().nextInt(kGreenColor),
        math.Random().nextInt(kBlueColor),
        kAlpha,
      );
      // save the previous random generated color and compare
    } while (generatedColor == previousColor);

    // return random color
    return generatedColor;
  }
}
