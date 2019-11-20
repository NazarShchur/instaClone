import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta/content/post/post.dart';

class VerticalPostPanel extends StatefulWidget {
  final List<Post> _posts;

  VerticalPostPanel(this._posts);
  //todo refactor
  @override
  State<StatefulWidget> createState() => VerticalPostPanelState(_posts);
}

class VerticalPostPanelState extends State<VerticalPostPanel> {
  List<Post> posts;

  VerticalPostPanelState(this.posts);

  @override
  Widget build(BuildContext context) {
    return Column(children: widget._posts);
  }
}
