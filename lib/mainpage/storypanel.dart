import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta/data/constants.dart';
import 'package:insta/content/story/story.dart';

class StoryPanel extends StatefulWidget {
  final List<Story> _stories;

  StoryPanel(this._stories);

  @override
  State<StatefulWidget> createState() => StoryPanelState(_stories);
}

class StoryPanelState extends State<StoryPanel> {
  List<Story> stories;

  StoryPanelState(this.stories);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: Constants.globalSidePadding,
          right: Constants.globalSidePadding,
          top: Constants.storyPanelTopPadding,
          bottom: Constants.storyPanelBotPadding),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
        color: Colors.grey,
        width: 1.0,
      ))),
      child: Row(
        textDirection: TextDirection.ltr,
        children: stories,
      ),
    );
  }
}
