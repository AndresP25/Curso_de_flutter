import 'package:flutter/material.dart';
import 'reviewer_data.dart';
import 'image_place.dart';

class ReviewPlace extends StatelessWidget{

  String imgPathToPhoto;
  String nameReviewer;
  int numberReviews;
  int numberPhotos;
  double rateStars;
  String reviewDescription;

  ReviewPlace(
      this.imgPathToPhoto,
      this.nameReviewer,
      this.numberReviews,
      this.numberPhotos,
      this.rateStars,
      this.reviewDescription,
      {super.key}
  );

  @override
  Widget build(BuildContext context) {

    final reviewData = Row (
      children: [
        ImagePlace(imgPathToPhoto),
        ReviewerData(nameReviewer, numberReviews, numberPhotos, rateStars, reviewDescription)
      ],
    );

    final textPadding = Container(
      margin: const EdgeInsets.only(
        top: 20,
        left: 20
      ),
      child: const Text(
        "All reviews",
        style: TextStyle(
          fontSize: 14.0,
          color: Colors.grey,
          fontWeight: FontWeight.w700,
        ),
      ),
    );

    final reviewModule = Column(
      crossAxisAlignment: CrossAxisAlignment.start, //To Align column to left.
      children: [
        textPadding,
        reviewData,
      ],
    );

    return reviewModule;
  }


}