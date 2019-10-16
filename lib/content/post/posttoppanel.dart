import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta/data/constants.dart';
import 'package:insta/data/database.dart';

class PostTopPanel extends StatelessWidget{
  final String _username;
  PostTopPanel(this._username);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: Constants.postTopPartPadding,
          bottom: Constants.postTopPartPadding,
          left: Constants.globalSidePadding,
          right: Constants.globalSidePadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: Constants.iconsSize,
                height: Constants.iconsSize,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(Database.getInstance().findProfilePhotoByUsername(_username))
                    )
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: Constants.postUsernameLeftPadding),
                child: Text("$_username", style: Constants.postTextStyle),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Icon(
                Icons.menu,
                color: Colors.black,
                size: Constants.iconsSize,
              )
            ],
          )
        ],
      ),
    );
  }

}