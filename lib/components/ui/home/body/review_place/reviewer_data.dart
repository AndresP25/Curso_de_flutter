import 'package:flutter/material.dart';
import '../common_used_classes/row_stars_rate.dart';

class ReviewerData extends StatelessWidget {

  String nameReviewer;
  int numberReviews;
  int numberPhotos;
  double rateStars;
  String reviewDescription;

  ReviewerData(
      this.nameReviewer,
      this.numberReviews,
      this.numberPhotos,
      this.rateStars,
      this.reviewDescription,
      {super.key}
  );


  @override
  Widget build(BuildContext context) {

    String stringReviewerData(){

      String R,P;

      if (numberReviews>1) {
        R = "s";
      }else{
        R = "";
      }

      if (numberPhotos>1) {
        P = "s";
      }else{
        P = "";
      }

      String data = "$numberReviews review$R - $numberPhotos photo$P";

      return data;
    }

    final reviewerData = Container(
        margin: const EdgeInsets.only(
            top: 20,
            left: 20
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, //To Align column to left.

            children: [

              Text(
                nameReviewer,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                ),
              ), // nameReviewerText


              Container(
                  margin: const EdgeInsets.only(
                    top: 5,
                  ),
                  child:Row(
                      children: [

                        Container(
                          margin: const EdgeInsets.only(
                            right: 10,
                          ),
                          child:Text(
                            stringReviewerData(),
                            style: const TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey,
                              fontWeight: FontWeight.w700,
                            ),
                          ), //dataReviewerText
                        ),

                        StarsRate(rateStars,0,12.0)

                      ]
                  )
              ),

              Container(
                margin: const EdgeInsets.only(
                  top: 5,
                ),
                child:Text(
                  reviewDescription,
                  style: const TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ]
        )
    );

    return reviewerData;
  }
}