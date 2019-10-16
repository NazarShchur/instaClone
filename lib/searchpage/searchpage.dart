import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta/data/database.dart';
import 'package:insta/searchPage/searchpageform.dart';
import 'package:insta/searchPage/userslist.dart';
import 'package:insta/staticPages/botpanel.dart';
import 'package:insta/staticPages/toppanel.dart';
import 'package:insta/user/user.dart';

class SearchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState()=> _SearchPageState();

}

class _SearchPageState extends State<SearchPage>{
  TextEditingController controller = TextEditingController();
  Iterable<User> users = List();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            TopPanel(),
            SearchForm(findUsers, controller),
            UsersList(users)
          ],
        ),
      ),
      bottomNavigationBar: BotPanel(),
    );
  }

  void findUsers(){
    setState(() {
      users = Database.getInstance().getUsers()
          .where((a) => a.getUsername().contains(controller.text));
    });
  }

}
