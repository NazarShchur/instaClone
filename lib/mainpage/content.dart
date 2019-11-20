import 'package:flutter/cupertino.dart';
import 'package:insta/data/database.dart';

import 'package:insta/mainPage/storypanel.dart';

class Content extends StatefulWidget {
  final FutureBuilder _postPanel;
  final StoryPanel _storyPanel;

  Content(this._storyPanel, this._postPanel);
  @override
  State<StatefulWidget> createState() => ContentState(_storyPanel, _postPanel);
}

class ContentState extends State<Content>{
  FutureBuilder<Database> postPanel;
  StoryPanel storyPanel;

  ContentState(this.storyPanel, this.postPanel);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: <Widget>[
          storyPanel,
          postPanel
        ],

      ),

    );
  }

}