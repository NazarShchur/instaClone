import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta/data/constants.dart';
import 'package:insta/user/user.dart';

import 'UserStat.dart';

class UserTopPanel extends StatelessWidget {
  final User user;

  UserTopPanel(this.user);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(
          left: Constants.globalSidePadding,
          right: Constants.globalSidePadding,
          top: 20,
          bottom: 20,
        ),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: Colors.grey,
                    width: Constants.userTopPanelBotBorderWidth))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(user.getProfileIcon())))),
                Text(user.username)
              ],
            ),
            UserStat('posts', user.posts.length),
            UserStat('folowers', 0),
            UserStat('folow', 0)
          ],
        ));
  }
}
