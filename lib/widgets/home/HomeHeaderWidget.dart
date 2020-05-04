import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 48),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(CupertinoIcons.back),
          ),
          InkWell(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Icon(CupertinoIcons.ellipsis),
          ),
        ],
      ),
    );
  }
}
