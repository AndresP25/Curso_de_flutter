import 'package:firebase_auth/firebase_auth.dart';

class Place{
  String? pId;
  final String namePlace;
  final String description;
  String? urlPlaceImage;
  int? likes;
  User? userOwner;

  Place({
    this.pId,
    required this.namePlace,
    required this.description,
    this.urlPlaceImage,
    this.likes = 0,
    this.userOwner
    });
}