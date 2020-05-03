import 'package:flutter/material.dart';

class HomeRecentListView extends StatelessWidget {
  final String fileName;
  final String date;
  final String size;
  const HomeRecentListView({
    Key key,
    this.fileName,
    this.date,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  fileName,
                  style: TextStyle(fontSize: 15, color: Color(0xFF22215B)),
                ),
              ),
              Text(
                date,
                style: TextStyle(
                    fontSize: 11, color: Color(0xFF22215B).withAlpha(60)),
              )
            ],
          ),
          Text(size)
        ],
      ),
    );
  }
}
