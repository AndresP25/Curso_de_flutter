import 'package:flutter/material.dart';
import 'review_list.dart';

class ReviewPlace extends StatelessWidget{

  List listOfPlaceReviews;

  ReviewPlace(
      this.listOfPlaceReviews,
      {super.key}
  );

  @override
  Widget build(BuildContext context) {

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
    );//"All reviews" Text

    final reviewModule = Column(
      crossAxisAlignment: CrossAxisAlignment.start, //To Align column to left.
      children: [
        textPadding,
        ReviewList(listOfPlaceReviews),
      ],
    );

    return reviewModule;
  }


}