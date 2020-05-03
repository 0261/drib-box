import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginButton extends StatelessWidget {
  final String title;
  final String assets;
  final MainAxisAlignment maa;
  final Color fontColor;
  final Color buttonBgColor;
  const LoginButton({
    Key key,
    @required this.size,
    this.title,
    this.assets,
    this.maa,
    this.fontColor,
    this.buttonBgColor,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.35,
      color: buttonBgColor,
      child: OutlineButton(
        padding: const EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: maa,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(fontSize: 16, color: fontColor),
            ),
            SvgPicture.asset(
              assets,
              width: 20,
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
