import 'package:drib_box/components/HomeFolderView.dart';
import 'package:flutter/material.dart';

class HomeFolderGridViewWidget extends StatelessWidget {
  const HomeFolderGridViewWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        childAspectRatio: 1.35,
        mainAxisSpacing: 20,
        children: <Widget>[
          HomeFolderGridView(
            boxColor: Color(0xFFEEF7FE),
            folderAssets: 'assets/icons/folder.svg',
            title: '모바일 앱',
            date: '12월 2020년',
            textColor: Color(0xFF415EB6),
          ),
          HomeFolderGridView(
            boxColor: Color(0xFFFFFBEC),
            folderAssets: 'assets/icons/yFolder.svg',
            title: 'SVG 아이콘',
            date: '12월 14일 2020년',
            textColor: Color(0xFFFFB110),
          ),
          HomeFolderGridView(
            boxColor: Color(0xFFFEEEEE),
            folderAssets: 'assets/icons/rFolder.svg',
            title: '프로토타입',
            date: '11월 22일 2020년',
            textColor: Color(0xFFAC4040),
          ),
          HomeFolderGridView(
            boxColor: Color(0xFFF0FFFF),
            folderAssets: 'assets/icons/gFolder.svg',
            title: '아바타',
            date: '11월 10일 2020년',
            textColor: Color(0xFF23B0B0),
          ),
        ],
      ),
    );
  }
}
