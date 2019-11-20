import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta/content/post/gridpostpanel.dart';
import 'package:insta/content/post/verticalpostpanel.dart';
import 'package:insta/staticpages/botpanel.dart';
import 'package:insta/staticpages/toppanel.dart';
import 'package:insta/user/user.dart';
import 'package:insta/userpage/userposts.dart';
import 'package:insta/userpage/usertoppanel.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final User user = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: TopPanel(),
      body: ListView(
        children: <Widget>[
          UserTopPanel(user),
          UserPosts(user.posts)
        ],
      ),
      bottomNavigationBar: BotPanel(),
    );
  }
}
