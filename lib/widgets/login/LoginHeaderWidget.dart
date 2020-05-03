import 'package:drib_box/components/LoginHeaderCilpper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: LoginHeaderClipper(),
          child: Container(
            height: size.height * 0.45,
            decoration: BoxDecoration(
              color: Color(0xFFEEF7FE),
            ),
          ),
        ),
        Positioned(
          child: SvgPicture.asset('assets/icons/cloud.svg'),
          top: size.height * 0.05,
          left: size.width * 0.08,
          width: 37,
          height: 21,
        ),
        Positioned(
          child: SvgPicture.asset('assets/icons/cloud.svg'),
          top: size.height * 0.1,
          left: size.width * 0.58,
          width: 37,
          height: 21,
        ),
        Positioned(
          child: SvgPicture.asset('assets/icons/cloud.svg'),
          top: size.height * 0.2,
          left: size.width * -0.02,
          width: 37,
          height: 21,
        ),
        Positioned(
          child: SvgPicture.asset('assets/icons/cloud.svg'),
          top: size.height * 0.15,
          left: size.width * 0.78,
          width: 115,
          height: 65,
        ),
        Positioned(
            child: SvgPicture.asset(
              'assets/icons/dripbox.svg',
              width: size.width * 0.25,
              height: size.height * 0.25,
            ),
            top: size.height * 0.15,
            left: size.width * 0.05)
      ],
    );
  }
}
