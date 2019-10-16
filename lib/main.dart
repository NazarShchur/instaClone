import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta/mainPage/mainpage.dart';
import 'package:insta/searchPage/searchpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      routes: {
        '/search' : (BuildContext context) => SearchPage()
    },
      )
    ;
  }
}
