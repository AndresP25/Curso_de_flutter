import 'package:flutter/material.dart';

class ProfileNameOfTextDescription extends StatelessWidget {

  String nameDescription;

  ProfileNameOfTextDescription(this.nameDescription, {super.key});

  @override
  Widget build(BuildContext context) {

    final profileNameOfTextDescription = Container(
      margin: const EdgeInsets.only(
          top: 20,
          left: 20
      ),
      child: Text(
        nameDescription,
        style: const TextStyle(
          fontSize: 25.0,
          color: Colors.black,
          fontWeight: FontWeight.w900,
        ),
      ),
    );

    return profileNameOfTextDescription;
  }

}