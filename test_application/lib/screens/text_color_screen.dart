// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:test_application/services/get_colors.dart';
import 'package:test_application/utilities/constant.dart';

class TextColorScreen extends StatefulWidget {
  const TextColorScreen({Key? key}) : super(key: key);

  @override
  State<TextColorScreen> createState() => _TextColorScreenState();
}

class _TextColorScreenState extends State<TextColorScreen> {
  // Create a class object
  GetColors getColors = GetColors();

  // Create private variable type color
  Color? _color;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          // state to track color change
          setState(() {
            // assigning a random color obtained from a method to a variable
            _color = getColors.getRNDColor();
          });
        },
        child: Scaffold(
          body: Container(
            // applying the resulting random color to the color property
            color: _color,

            child: const Center(
              child: Text(
                kCenterTextTCScreen,
                style: kCenterTextStyleTCScreen,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
