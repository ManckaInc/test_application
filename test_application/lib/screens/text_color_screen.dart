import 'package:flutter/material.dart';
import 'package:test_application/services/get_color.dart';
import 'package:test_application/utilities/constant.dart';


class TextColorScreen extends StatefulWidget {
  const TextColorScreen({Key? key}) : super(key: key);


  @override
  State<TextColorScreen> createState() => _TextColorScreenState();
}

class _TextColorScreenState extends State<TextColorScreen> {

  GetColorsCount getColorsCount = GetColorsCount();

  Color? _color;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: (){
          setState(() {
            _color = getColorsCount.getColor();
          });
        },
        child: Scaffold(
          body: Container(
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
