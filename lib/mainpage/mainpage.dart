import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta/content/post/gridpostpanel.dart';
import 'package:insta/data/database.dart';
import 'package:insta/content/story/story.dart';
import 'package:insta/mainPage/storypanel.dart';
import 'package:insta/content/post/verticalpostpanel.dart';
import 'package:insta/staticPages/toppanel.dart';

import '../staticPages/botpanel.dart';
import '../data/constants.dart';
import 'content.dart';

class MainPage extends StatelessWidget {
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
                    FutureBuilder<Database>(
                      future: Database.getInstance(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return VerticalPostPanel(snapshot.data.getAllPosts());
                        } else {
                          return Center(child: CircularProgressIndicator());
                        }
                      },
                    )),
              ],
              direction: Axis.vertical,
            ),
          )),
      bottomNavigationBar: BotPanel(),
    );
  }
}
