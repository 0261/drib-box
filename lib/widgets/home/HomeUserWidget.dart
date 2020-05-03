import 'package:flutter/material.dart';

class HomeUserWidget extends StatelessWidget {
  const HomeUserWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xFF22215B),
      ),
      child: Column(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.redAccent,
            child: Text('D'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text('댄 킴',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 8,
            ),
            child: Text(
              '소프트웨어 엔지니어',
              style: TextStyle(fontSize: 13, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 8,
              bottom: 32,
            ),
            child: Text(
              'Lorem ipsum dolor sit amet, \n consectetur adipiscing elit. \n Ornare pretium placerat ut platea.',
              style: TextStyle(fontSize: 13, color: Colors.white.withAlpha(60)),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
