import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta/data/database.dart';
import 'package:insta/mainPage/postpanel.dart';
import 'package:insta/content/story/story.dart';
import 'package:insta/mainPage/storypanel.dart';
import 'package:insta/staticPages/toppanel.dart';

import '../staticPages/botpanel.dart';
import '../data/constants.dart';
import 'content.dart';

class MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
          textDirection: TextDirection.ltr,
          child: Container(
            color: Colors.white,
            child: Flex(
              textDirection: TextDirection.ltr,
              children: <Widget>[
                TopPanel(),
                Content(
                  StoryPanel([
                    Story(Constants.icon1),
                    Story(Constants.icon2),
                    Story(Constants.icon4)
                  ]),
                  PostPanel(
                    [
                      ...Database.getInstance().getAllPosts()
                    ],
                  ),
                ),
              ],
              direction: Axis.vertical,
            ),
          )),
      bottomNavigationBar: BotPanel(),
    );
  }
}