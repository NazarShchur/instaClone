import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta/content/post/post.dart';

class GridPostPanel extends StatelessWidget {
  final List<Post> posts;

  GridPostPanel(this.posts);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      crossAxisSpacing: 2,
      crossAxisCount: 3,
      children: List.generate(posts.length, (index) =>
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(posts[index].imgUrl)
          )
        ),
      )

      ),
    );
  }
}
