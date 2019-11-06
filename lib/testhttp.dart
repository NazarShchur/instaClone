import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:insta/staticpages/botpanel.dart';
import 'package:insta/user/user.dart';

class TestHttp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TestHttpState();

}

class TestHttpState extends State<TestHttp> {
  TextEditingController controller;
  String text;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
             Padding(
               padding: const EdgeInsets.all(20.0),
               child: TextField(
                onEditingComplete: () {
                  http.get('https://5dc307521666f6001477f7f8.mockapi.io/User/' + controller.text).then((response) {
                    setState(() {
                      text = User.fromJson(jsonDecode(response.body)).toString();
                    });
                  }).catchError((error) {
                      text = error.toString();
                  });
                },
                controller: controller,
            ),
             ),
          text == null ? Text('input user id') : Text(text)
        ],
      ),
      bottomNavigationBar: BotPanel(),
    );
  }
}
