
import 'package:insta/content/post/post.dart';

class User{
  int id;
  String username;
  List<Post> posts;
  String profileIconUrl;

  User({this.username, this.posts, this.profileIconUrl});

  User.test({this.id, this.username});
  String getUsername() => username;
  List<Post> getPosts() => posts;
  String getProfileIcon() => profileIconUrl;

  setNickname(String nickname) => username = nickname;

  factory User.fromJson(Map<String, dynamic> json){
    return User(
      username: json['username'],
      profileIconUrl: json['profileIconUrl'],
      posts: Post.postsFromJson(json['posts'])
    );
  }
  @override
  String toString() {
    return "username: $username";
  }

}