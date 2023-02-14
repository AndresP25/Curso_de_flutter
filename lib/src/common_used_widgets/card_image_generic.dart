import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CardImageGeneric extends StatelessWidget {

  CardImageGeneric({
    required this.network,
    required this.pathImage,
    required this.height,
    required this.width,
    this.asset,
    this.top,
    this.left,
    this.right,
    this.bottom,
    super.key});

  final bool network;
  final String pathImage;
  final double height;
  final double width;
  bool? asset;
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

    return Container (

      height: height,
      width: width,
      margin: EdgeInsets.only(
        top: top!,
        right: right!,
        left: left!,
        bottom: bottom!

      ),
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: network ?
                CachedNetworkImageProvider(pathImage)
                 :
                  asset! ?
                    AssetImage(pathImage) as ImageProvider<Object>
                      :
                    FileImage(File(pathImage) )

          ),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          shape: BoxShape.rectangle,
          boxShadow: const [
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15,
                offset: Offset(0,7)
            )

          ]
      ),
    );
  }

}