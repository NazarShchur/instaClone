
import 'package:insta/content/post.dart';

class User{
  String _username;
  List<Post> _posts;
  String _profileIconUrl;
  User(this._username, this._posts, this._profileIconUrl);
  String getUsername() => _username;
  List<Post> getPosts() => _posts;
  String getProfileIcon() => _profileIconUrl;

  setNickname(String nickname) => _username = nickname;

  @override
  String toString() {
    return 'User{_nickname: $_username}';
  }


}