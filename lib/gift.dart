import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class GiftTab extends StatefulWidget {
  const GiftTab({Key? key}) : super(key: key);

  @override
  _GiftTabState createState() => _GiftTabState();
}

class _GiftTabState extends State<GiftTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            child: _buildListItem(
                "Get Diamond + Voutcher", 5, '10', 'assets/diamondcombo.png'),
          ),
          Container(
            child: _buildListItem(
                "Get Diamond + Voutcher", 5, '10', 'assets/diamondcombo.png'),
          ),
          Container(
            child: _buildListItem(
                "Get Diamond + Voutcher", 5, '10', 'assets/scancombo.png'),
          ),
          Container(
            child: _buildListItem(
                "Get Diamond + Voutcher", 5, '10', 'assets/crate combo.png'),
          ),
          Container(
            child: _buildListItem(
                "Get Diamond + Voutcher", 5, '10', 'assets/diamondcombo.png'),
          ),
        ],
      ),
    );
  }

  _buildListItem(String giftname, rating, String price, String imgpath) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 210.0,
            child: Row(
              children: [
                Container(
                  height: 75.0,
                  width: 75.0,

                  // ignore: prefer_const_constructors
                  decoration: BoxDecoration(
                    color: Color(0xFFFFE3DF),
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                  child: Center(
                    child: Image.asset(
                      imgpath,
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        giftname,
                        style: GoogleFonts.notoSans(
                            fontSize: 14.0, fontWeight: FontWeight.w400),
                      ),
                      SmoothStarRating(
                        allowHalfRating: false,
                        onRated: (v) {},
                        rating: 5,
                        starCount: 5,
                        color: Color(0xFFFFD143),
                        size: 15.0,
                        spacing: 0.0,
                      ),
                      Row(
                        children: [
                          Text(
                            '\$' + price,
                            style: GoogleFonts.lato(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                              textStyle: TextStyle(color: Color(0xFFF68D7F)),
                            ),
                          ),
                          SizedBox(
                            height: 3.0,
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          FloatingActionButton(
            onPressed: () {},
            mini: true,
            child: Center(
              child: Icon(Icons.play_arrow),
            ),
            backgroundColor: Color(0xFFFE7D6A),
          )
        ],
      ),
    );
  }
}
