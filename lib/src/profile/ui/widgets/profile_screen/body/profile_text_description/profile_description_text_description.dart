import 'package:flutter/material.dart';

class ProfileDescriptionOfTextDescription extends StatelessWidget {

  String description;

  ProfileDescriptionOfTextDescription(this.description,{super.key});

  @override
  Widget build(BuildContext context) {

    final profileDescriptionOfTextDescription = Container(
      margin: const EdgeInsets.only(
          top: 5,
          left: 20
      ),
      child: Text(
        description,
        style: const TextStyle(
          fontSize: 12.0,
          color: Colors.grey,
          fontWeight: FontWeight.w600,
        ),
      ),
    );

    return profileDescriptionOfTextDescription;
  }

}