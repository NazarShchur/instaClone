import 'package:flutter/cupertino.dart';

class UserStat extends StatelessWidget{
  final String text;
  final int count;
  UserStat(this.text, this.count);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          count.toString(),
          style: TextStyle(
            fontSize: 20
          ),
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 15
          ),
        )
      ],
    );
  }

}