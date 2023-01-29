import 'package:flutter/material.dart';
import 'reviewer_data.dart';
import 'image_place.dart';

class ReviewList extends StatelessWidget {

  List listOfPlaceReviews;

  ReviewList(
      this.listOfPlaceReviews,
      {super.key}
  );

  @override
  Widget build(BuildContext context) {

    Widget reviewDataConstructor(imgPathToPhoto,nameReviewer, numberReviews, numberPhotos, rateStars, reviewDescription){
      final reviewData = Row (
        children: [
          ImagePlace(imgPathToPhoto),
          ReviewerData(nameReviewer, numberReviews, numberPhotos, rateStars, reviewDescription)
        ],
      );
      return reviewData;
    }

    List<Widget> reviewListConstructor() {

      List<Widget> reviewList = [];

      for (int i = 0; i < listOfPlaceReviews.length; i++){
        reviewList.add(
            reviewDataConstructor(
                listOfPlaceReviews[i]['imgPathToPhoto'],
                listOfPlaceReviews[i]['nameReviewer'],
                listOfPlaceReviews[i]['numberReviews'],
                listOfPlaceReviews[i]['numberPhotos'],
                listOfPlaceReviews[i]['rateStars'],
                listOfPlaceReviews[i]['reviewDescription']
            )
        );
      }
      return reviewList;
    }

    final reviewList = Column(
      children: reviewListConstructor()
    );
    
    return reviewList;
  }
}