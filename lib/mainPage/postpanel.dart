import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta/content/post/post.dart';

class PostPanel extends StatefulWidget {
  final List<Post> _posts;

  PostPanel(this._posts);

  @override
  State<StatefulWidget> createState() => PostPanelState(_posts);
}

class PostPanelState extends State<PostPanel> {
  List<Post> posts;

  PostPanelState(this.posts);

  @override
  Widget build(BuildContext context) {
    return  Column(
          children: widget._posts
    );

  }
}
