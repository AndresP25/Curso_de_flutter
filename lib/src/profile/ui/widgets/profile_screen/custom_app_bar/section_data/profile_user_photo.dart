import 'package:flutter/material.dart';

class ProfileUserPhoto extends StatelessWidget {

  final String pathOfProfileImage;

  final bool assetImage;
  const ProfileUserPhoto({super.key,
    required this.pathOfProfileImage,
    this.assetImage = false});

  @override
  Widget build(BuildContext context) {

    return Container(

      height: 100,
      width: 100,

      margin: const EdgeInsets.only(
          top: 10,
          left: 20
      ),

      padding: const EdgeInsets.all(2.0),

      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: circleAvatar(),
    );

  }

  Widget circleAvatar(){
    if (assetImage == true){
      return CircleAvatar(backgroundImage:AssetImage(pathOfProfileImage));
    }else{
      return CircleAvatar(backgroundImage:NetworkImage(pathOfProfileImage));
    }
  }
}