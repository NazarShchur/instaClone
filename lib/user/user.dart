
import 'package:insta/content/post.dart';

class User{
  String _nickname;
  List<Post> _posts;
  String _profileIconUrl;
  User(this._nickname, this._posts, this._profileIconUrl);
  String getNickname() => _nickname;
  List<Post> getPosts() => _posts;
  String getProfileIcon() => _profileIconUrl;

  setNickname(String nickname) => _nickname = nickname;

}