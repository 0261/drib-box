import 'package:drib_box/widgets/home/HomeFolderGridViewWidget.dart';
import 'package:drib_box/widgets/home/HomeHeaderWidget.dart';
import 'package:drib_box/widgets/home/HomeRecentListViewWidget.dart';
import 'package:drib_box/widgets/home/HomeUserWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding:
              const EdgeInsets.only(top: 0, left: 16, right: 16, bottom: 16),
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
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: InkWell(
                              onTap: () {},
                              child: SvgPicture.asset('assets/icons/add.svg')),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: InkWell(
                              onTap: () {},
                              child:
                                  SvgPicture.asset('assets/icons/filter.svg')),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: InkWell(
                              onTap: () {},
                              child:
                                  SvgPicture.asset('assets/icons/forward.svg')),
                        ),
                      ],
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
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset('assets/icons/sort.svg'),
                    )
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

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: size.height * 0.18,
              child: DrawerHeader(
                child: Text(
                  '',
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ),
            ),
            ListTile(
              selected: true,
              title: Text('Home'),
              onTap: () => {print('Dan')},
            ),
            ListTile(
              title: Text('프로필'),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              title: Text('저장소'),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              title: Text('공유'),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              title: Text('상태'),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              title: Text('설정'),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              title: Text('도움'),
              onTap: () => {Navigator.of(context).pop()},
            ),
          ],
        ),
      ),
    );
  }
}
