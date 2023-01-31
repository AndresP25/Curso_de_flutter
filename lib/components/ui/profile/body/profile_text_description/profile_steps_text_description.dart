import 'package:flutter/material.dart';

class ProfileStepsOfTextDescription extends StatelessWidget {

  int steps;
  ProfileStepsOfTextDescription(this.steps, {super.key});

  @override
  Widget build(BuildContext context) {

    final profileStepsOfTextDescription = Container(
      margin: const EdgeInsets.only(
          top: 5,
          left: 20,
          bottom: 20,
      ),
      child: Text(
        "Steps: $steps",
        style: const TextStyle(
          fontSize: 13.0,
          color: Colors.deepOrange,
          fontWeight: FontWeight.w700,
        ),
      ),
    );

    return profileStepsOfTextDescription;
  }

}