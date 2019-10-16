
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta/content/posticon.dart';
import 'package:insta/data/database.dart';

import '../data/constants.dart';

class Post extends StatefulWidget {
  final String _imgUrl;
  final String _username;

  @override
  createState() => _PostState();

  Post(this._imgUrl, this._username);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Post &&
              runtimeType == other.runtimeType &&
              _imgUrl == other._imgUrl;


  @override
  int get hashCode =>
      _imgUrl.hashCode ^
      _username.hashCode;


}

class _PostState extends State<Post> {
  int likesCount;
  bool isLiked = false;
  String username;

  @override
  void initState() {
    likesCount = 0;
    username = widget._username;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: Constants.postBottomPadding),
      child: Column(
        children: <Widget>[
          Padding(
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
                          image: AssetImage(Database.getInstance().findProfilePhotoByUsername(username))
                        )
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: Constants.postUsernameLeftPadding),
                      child: Text("$username", style: Constants.postTextStyle),
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
          ),
          GestureDetector(
            child: Image(image: AssetImage(widget._imgUrl)),
            onDoubleTap: (){
              setState(() {
                isLiked = isLiked ? false : true;
                likesCount++;
              });
            },
          ),
          Padding(
            padding: EdgeInsets.only(
                left: Constants.globalSidePadding,
                right: Constants.postBotPartPadding,
                top: Constants.postBotPartPadding,
                bottom: Constants.postBotPartPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    GestureDetector(
                      child: Icon(
                          isLiked ? Icons.favorite : Icons.favorite_border,
                          size: Constants.iconsSize),
                      onTap: () {
                        setState(() {
                          isLiked = isLiked ? false : true;
                          likesCount++;
                        });
                      },
                    ),
                    PostIcon(Icons.comment),
                    PostIcon(Icons.share),
                  ],
                ),
                Row(
                  children: <Widget>[PostIcon(Icons.bookmark_border)],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: Constants.globalSidePadding,
                right: Constants.globalSidePadding),
            child: Row(
              children: <Widget>[
                Text("$likesCount likes", style: Constants.postTextStyle),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(
                left: Constants.globalSidePadding,
                right: Constants.globalSidePadding),
            child: Row(
              children: <Widget>[
                Text("User Comment", style: Constants.postTextStyle)
              ],
            ),
          )
        ],
      ),
    );
  }
}
