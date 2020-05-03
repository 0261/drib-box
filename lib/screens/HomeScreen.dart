import 'package:drib_box/widgets/home/HomeFolderGridViewWidget.dart';
import 'package:drib_box/widgets/home/HomeHeaderWidget.dart';
import 'package:drib_box/widgets/home/HomeRecentListViewWidget.dart';
import 'package:drib_box/widgets/home/HomeUserWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              HomeHeaderWidget(),
              HomeUserWidget(),
              Padding(
                padding: const EdgeInsets.only(top: 48),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '내 폴더',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF22215B)),
                    ),
                    Text(
                      '모두 보기',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF22215B)),
                    )
                  ],
                ),
              ),
              HomeFolderGridViewWidget(),
              Padding(
                padding: const EdgeInsets.only(top: 48),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '최근 업로드',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF22215B)),
                    ),
                    Icon(CupertinoIcons.down_arrow)
                  ],
                ),
              ),
              HomeRecentListViewWidget()
            ],
          ),
        ),
      ),
    );
  }
}
