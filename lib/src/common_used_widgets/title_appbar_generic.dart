import 'package:flutter/material.dart';

class TitleAppBarGeneric extends StatelessWidget {

  TitleAppBarGeneric({
    required this.appBarText,
    this.top,
    this.left,
    this.right,
    this.bottom,
    super.key});

  final String appBarText;
  double? top;
  double? left;
  double? right;
  double? bottom;

  @override
  Widget build(BuildContext context) {

    top ??= 0;
    left ??= 0;
    right ??= 0;
    bottom ??= 0;

    return Container(
      margin: EdgeInsets.only(
          top: top!,
          right: right!,
          left: left!,
          bottom: bottom!
      ),
      //alignment: const Alignment(0,0),
      child: Text(
        appBarText,

        style: const TextStyle(
          fontSize: 40.0,
          color: Colors.white,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }

}