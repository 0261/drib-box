import 'package:drib_box/components/HomeListView.dart';
import 'package:flutter/material.dart';

class HomeRecentListViewWidget extends StatelessWidget {
  const HomeRecentListViewWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22),
      child: SingleChildScrollView(
        child: Container(
          height: 150,
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              HomeRecentListView(
                fileName: '프로젝트.docx',
                date: '11월 22일 2020년',
                size: '300kb',
              ),
              HomeRecentListView(
                fileName: '프로젝트.docx',
                date: '11월 22일 2020년',
                size: '300kb',
              ),
              HomeRecentListView(
                fileName: '프로젝트.docx',
                date: '11월 22일 2020년',
                size: '300kb',
              ),
              HomeRecentListView(
                fileName: '프로젝트.docx',
                date: '11월 22일 2020년',
                size: '300kb',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
