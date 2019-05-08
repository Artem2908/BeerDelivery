import 'package:flutter/material.dart';

class ChooseContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://previews.123rf.com/images/wideonet/wideonet1704/wideonet170400061/75862568-beer-row-and-snacks-on-wooden-background-football-fan-set.jpg",
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  'Beer Menu',
                  style: TextStyle(fontSize: 36.0, color: Colors.white),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                border: Border(top: BorderSide(color: Colors.green, style: BorderStyle.solid, width: 4.0)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://previews.123rf.com/images/banzzi/banzzi1606/banzzi160600019/59776277-beer-snacks-for-party-top-view.jpg",
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  'Beer Snacks',
                  style: TextStyle(fontSize: 36.0, color: Colors.white),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                border: Border(top: BorderSide(color: Colors.green, style: BorderStyle.solid, width: 4.0)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "http://vagabondway.net/wp-content/uploads/2017/02/Vietnam-scooter-beer-delivery-Vagabond-Way.jpg",
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  'Beer Delivery',
                  style: TextStyle(fontSize: 36.0, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
