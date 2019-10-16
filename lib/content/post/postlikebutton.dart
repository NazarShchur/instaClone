import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta/data/constants.dart';

class PostLikeButton extends StatelessWidget{
  final bool _isLiked;
  final Function doLike;
  PostLikeButton(this._isLiked, this.doLike);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Icon(
          _isLiked ? Icons.favorite : Icons.favorite_border,
          size: Constants.iconsSize),
      onTap: doLike,
    );
  }

}