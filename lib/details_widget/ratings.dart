import 'package:fashion_ui/models/category_model.dart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingsList extends StatefulWidget {
  final bool showAll;

  const RatingsList({Key? key, required this.showAll}) : super(key: key);

  @override
  State<RatingsList> createState() => _RatingsListState();
}

class _RatingsListState extends State<RatingsList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: widget.showAll ? reviewList.length : 2,
        itemBuilder: (BuildContext context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.purple,
              radius: 25,
              child: CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage(reviewList[index].image),
              ),
            ),
            title: Text(reviewList[index].name),
            subtitle: RatingBar.builder(
              initialRating: reviewList[index].rating.toDouble(),
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 20,
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                // Handle rating updates if needed
                print(rating);
              },
            ),
          );
        },
      ),
    );
  }
}
