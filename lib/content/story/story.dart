import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta/data/constants.dart';

class Story extends StatefulWidget {
  final String _imgUrl;

  Story(this._imgUrl);

  @override
  State<StatefulWidget> createState() => StoryState(_imgUrl);
}

class StoryState extends State<Story> {
  bool isWatched = false;
  String imgUrl;
  String username = "username";
  StoryState(this.imgUrl);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Constants.storyPadding),
      child: GestureDetector(
          child: Column(
            children: <Widget>[
              Container(
                height: Constants.storyRadius,
                width: Constants.storyRadius,
                decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.all(Radius.circular(Constants.storyRadius)),
                  border: Border.all(
                      color: isWatched ? Colors.grey : Colors.red, width: 2.0),
                  image: DecorationImage(
                      image: AssetImage(imgUrl),
                      fit: BoxFit.cover),
                ),
              ),
              Text("$username", style: Constants.storyTextStyle)
            ],
          ),
          onTap: () {
            setState(() {
              isWatched = true;
            });
          }),
    );
  }
}
