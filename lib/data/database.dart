import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:insta/content/post/post.dart';
import 'package:insta/user/user.dart';

class Database{
  static Database _database;
  List<User> _users;

  Database._();

  setUsers(List<User> users) => _users = users;

  static Future<Database> getInstance() async {
    if(_database == null){
      print("hello1");
      _database = Database._();
      _database._users = List<User>();
      var response;
      try {
        for(int i = 1; i < 5; i++){
          response = await http.get("https://5dc307521666f6001477f7f8.mockapi.io/User/$i");
         _database._users.add(User.fromJson(jsonDecode(response.body)));
        }
      } catch (e){
        print(e.toString());
      }

    }
    print(_database._users);
    return _database;
  }
//  static List<User> usersFromJson(List<Map<String, dynamic>> json){
//
//    List<User> users = List();
//    for(Map<String, dynamic> j in json){
//      users.add(User.fromJson(j));
//    }
//    print(users);
//    return users;
//  }
  List<User> getUsers() => _users;

  List<Post> getAllPosts() {
    return _users
        .map((a)=> a.getPosts())
        .expand((a)=>a)
        .toList();
  }


  String findProfilePhotoByUsername(String username) => _users
        .firstWhere((a) => a.getUsername() == username)
        .getProfileIcon();


}