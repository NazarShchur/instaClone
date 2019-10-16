import 'package:flutter/cupertino.dart';
import 'package:insta/searchPage/userresult.dart';
import 'package:insta/user/user.dart';

class UsersList extends StatelessWidget{
  final Iterable<User> users;
  UsersList(this.users);
  @override
  Widget build(BuildContext context) {
      return Expanded(
        child: ListView(
          children: [
            ...users.map((a)=> FoundedUser(a))
          ],
        ),
      );
  }

}