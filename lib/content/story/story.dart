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
  bool waiting = false;
  Future<Image> future;
  StoryState(this.imgUrl);

  Future<Image> img;

  @override
  Widget build(BuildContext context) {
    return  Padding(
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
                          color: isWatched ? Colors.grey : Colors.red,
                          width: 2.0),
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
                  future = waitImg();
                  waiting = true;
                  isWatched = true;
                });
              })
          ,
        );
  }

  FutureBuilder<Image> showStory() {
    return FutureBuilder<Image>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData){
          showDialog(
            context: context,
            builder: (BuildContext context){
              return Image(image: AssetImage(imgUrl));
            }
          );
        }
        return CircularProgressIndicator();
      },
    );
  }

  Future<Image> waitImg() async {
    await Future.delayed(Duration(seconds: 3), () {});
    return Image(
      image: AssetImage(imgUrl),
    );
  }
}
