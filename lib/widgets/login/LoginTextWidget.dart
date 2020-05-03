import 'package:flutter/material.dart';

class LoginTextWidget extends StatelessWidget {
  const LoginTextWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(bottom: 5),
            child: Text(
              '환영합니다.',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF22215B),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(
              '드립박스',
              style: TextStyle(
                  fontSize: 38,
                  color: Color(0xFF22215B),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '모두를 위한 최고의 클라우드 저장 플랫폼.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF7B7F9E),
                  ),
                ),
                Text(
                  '비즈니스 및 개인 데이터를 안전하게 관리.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF7B7F9E),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Text(
              '무료 회원가입',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF7B7F9E),
              ),
            ),
          )
        ],
      ),
    );
  }
}
