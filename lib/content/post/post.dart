
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta/content/post/postbotpanel.dart';
import 'package:insta/content/post/posticon.dart';
import 'package:insta/content/post/postimage.dart';
import 'package:insta/content/post/postlikebutton.dart';
import 'package:insta/content/post/posttoppanel.dart';
import 'package:insta/data/database.dart';

import '../../data/constants.dart';

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
          PostTopPanel(username),
          PostImage(widget._imgUrl, doLike),
          PostBotPanel(isLiked, doLike, likesCount)
        ],
      ),
    );
  }
  void doLike(){
    setState(() {
      isLiked = isLiked ? false : true;
      likesCount++;
    });
  }
}
