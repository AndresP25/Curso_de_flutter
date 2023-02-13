import 'package:flutter/material.dart';

class ProfileLikesOfTextDescription extends StatelessWidget {

  int likes;
  ProfileLikesOfTextDescription(this.likes, {super.key});

  @override
  Widget build(BuildContext context) {

    final profileStepsOfTextDescription = Container(
      margin: const EdgeInsets.only(
          top: 5,
          left: 20,
          bottom: 20,
      ),
      child: Text(
        "Hearts: $likes",
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