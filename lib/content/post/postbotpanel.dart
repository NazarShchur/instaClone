import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta/content/post/posticon.dart';
import 'package:insta/content/post/postlikebutton.dart';
import 'package:insta/data/constants.dart';

class PostBotPanel extends StatelessWidget{
  final bool isLiked;
  final Function doLike;
  final int likesCount;
  PostBotPanel(this.isLiked, this.doLike, this.likesCount);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                  PostLikeButton(isLiked, doLike),
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
    );
  }

}