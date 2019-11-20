import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta/data/constants.dart';
import 'package:insta/user/user.dart';
import 'package:insta/userpage/userpage.dart';

class FoundedUser extends StatelessWidget {
  final User user;

  FoundedUser(this.user);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.only(
          left: Constants.globalSidePadding,
          right: Constants.globalSidePadding,
          bottom: Constants.foundUserBottomPadding
        ),
        child: Row(
          children: [
            Container(
              width: Constants.foundUserIconSize,
              height: Constants.foundUserIconSize,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(user.getProfileIcon()),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: Constants.foundUserIconPaddingRight),
              child: Text(
                user.getUsername(),
                style: TextStyle(
                  fontSize: Constants.logoFontSize,
                ),
              ),
            )

          ],
        ),
      ),
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => UserPage(),
                settings: RouteSettings(
                  arguments: user
                )
            ));
      },
    );
  }
}
