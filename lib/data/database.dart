import 'package:insta/data/constants.dart';
import 'package:insta/content/post/post.dart';
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

  List<User> getUsers() => _users;

  List<Post> getAllPosts() => _users
      .map((a)=> a.getPosts())
      .expand((a)=>a)
      .toList();


  String findProfilePhotoByUsername(String username) => _users
        .firstWhere((a) => a.getUsername() == username)
        .getProfileIcon();


}