import 'package:flutter/cupertino.dart';
import 'package:insta/content/post/gridpostpanel.dart';
import 'package:insta/content/post/post.dart';
import 'package:insta/content/post/verticalpostpanel.dart';
import 'package:insta/userpage/postlookswitcher.dart';

class UserPosts extends StatefulWidget{
  final List<Post> posts;
  UserPosts(this.posts);
  @override
  State<StatefulWidget> createState() => UserPostsState();

}
class UserPostsState extends State<UserPosts>{
  bool isGrid = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        PostLookSwitcher(switchGrid, switchList, isGrid),
        isGrid ? GridPostPanel(widget.posts) : VerticalPostPanel(widget.posts)
      ],
    );
  }

  void switchGrid(){
    setState(() {
      isGrid = true;
    });
  }
  void switchList(){
    setState(() {
      isGrid = false;
    });
  }

}