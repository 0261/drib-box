import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeFolderGridView extends StatelessWidget {
  final Color boxColor;
  final String folderAssets;
  final String title;
  final Color textColor;
  final String date;
  const HomeFolderGridView({
    Key key,
    this.boxColor,
    this.folderAssets,
    this.title,
    this.textColor,
    this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: ClipRRect(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SvgPicture.asset(folderAssets),
                Icon(CupertinoIcons.ellipsis)
              ],
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                title,
                style: TextStyle(color: textColor, fontSize: 16),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                date,
                style: TextStyle(color: textColor, fontSize: 10),
              ),
            )
          ],
        ),
      ),
    );
  }
}
