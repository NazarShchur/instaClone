import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta/data/constants.dart';

class PostIcon extends StatefulWidget{
  final IconData _icon;
  PostIcon(this._icon);
  @override
  State<StatefulWidget> createState() =>PostIconState(_icon);

}

class PostIconState extends State<PostIcon>{
  IconData icon;
  PostIconState(this.icon);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: Constants.postIconPadding),
      child: Icon(icon, color: Colors.black, size: Constants.iconsSize),
    );
  }

}