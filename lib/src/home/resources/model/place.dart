import 'package:firebase_auth/firebase_auth.dart';

class Place{
  final String pId;
  final String name;
  final String description;
  final String urlPlaceImage;
  final int? likes;
  final User user;

  Place(this.pId, {
    required this.name,
    required this.description,
    required this.urlPlaceImage,
    this.likes,
    required this.user
    });
}