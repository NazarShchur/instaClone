import 'package:insta/data/constants.dart';
import 'package:insta/content/post.dart';
import 'package:insta/user/user.dart';

class Database{
  static Database _database;
  List<User> _users;

  Database._();

  setUsers(List<User> users) => _users = users;

  static Database getInstance(){
    if(_database == null){
      _database = Database._();
      _database.setUsers(
          <User>[
            User(
                Constants.username1,
                [Post(Constants.icon1, Constants.username1),
                  Post(Constants.icon2, Constants.username1),
                  Post(Constants.icon3, Constants.username1),
                  Post(Constants.icon4, Constants.username1)
                ],
              Constants.profileIcon1
            ),
            User(
                Constants.username2,
                [Post(Constants.icon6, Constants.username2),
                  Post(Constants.icon7,  Constants.username2),
                  Post(Constants.icon1,  Constants.username2),
                  Post(Constants.icon4,  Constants.username2)
                ],
              Constants.profileIcon2
            ),
            User(
                Constants.username3,
                [Post(Constants.icon7,  Constants.username3),
                  Post(Constants.icon2, Constants.username3),
                  Post(Constants.icon5, Constants.username3),
                  Post(Constants.icon3, Constants.username3)
                ],
              Constants.profileIcon3
            ),
            User(
                Constants.username4,
                [Post(Constants.icon6, Constants.username4),
                  Post(Constants.icon5, Constants.username4),
                  Post(Constants.icon7, Constants.username4),
                  Post(Constants.icon2, Constants.username4)
                ],
              Constants.profileIcon4
            ),

          ]
      );
    }
    return _database;
  }
  List<User> getUsers(){
    return _users;
  }
  List<Post> getPosts(){
    List<Post> posts = List();
    for(User u in _users){
      posts.addAll(u.getPosts());
    }
    posts.shuffle();
    return posts;
  }

  String findProfilePhotoByUsername(String username){
    return _users
        .firstWhere((a) => a.getUsername() == username)
        .getProfileIcon();
  }

}