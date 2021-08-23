import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          buildListItem('Delicious hot Burgur ', 4.0, '6', 'assets/hotdog.png'),
          buildListItem('Cresspy Fries  ', 4.0, '6', 'assets/fries.png')
        ],
      ),
    );
  }


  buildListItem(String foodName, rating, String price, String imgPath) {
    return Padding(
        padding: EdgeInsets.only(left: 15.0, top: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              flex:4,
              child: Container(
                  width: 210.0,
                  child: Row(children: [
                    Container(
                        height: 75.0,
                        width: 75.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.0),
                            color: Color(0xFFFFE3DF)),
                        child: Center(
                            child:
                            Image.asset(imgPath, height: 50.0, width: 50.0))),
                    SizedBox(width: 20.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(foodName,
                            style: TextStyle(
                                fontSize: 14.0, fontWeight: FontWeight.w400),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,

                        ),
                        SmoothStarRating(
                            allowHalfRating: false,

                            starCount: rating.toInt(),
                            rating: rating,
                            color: Color(0xFFFFD143),
                            borderColor: Color(0xFFFFD143),
                            size: 15.0,
                            spacing: 0.0),
                        Row(
                          children: <Widget>[
                            Text(
                              '\$' + price,
                              style:

                                  TextStyle(color: Color(0xFFF68D7F),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            SizedBox(width: 3.0),
                            Text(
                              '\$' + '18',
                              style:

                                  TextStyle(
                                      color: Colors.grey.withOpacity(0.4),
                                    fontSize: 12.0,
                                    decoration: TextDecoration.lineThrough, //crossline
                                    fontWeight: FontWeight.w600,
                                  ),
                            )
                          ],
                        )
                      ],
                    )
                  ])),
            ),
            Expanded(
              flex: 1,
              child: FloatingActionButton(
                  heroTag: foodName,
                  mini: true,
                  onPressed: () {},
                  child: Center(
                      child: Icon(Icons.add, color: Colors.white)
                  ),
                  backgroundColor: Color(0xFFFE7D6A),
                ),
            ),

          ],
        ));
  }
}
