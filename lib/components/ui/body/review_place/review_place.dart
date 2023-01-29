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


    final reviewModule = Column(
      children: [

        reviewData,
      ],
    );

    return reviewModule;
  }


}