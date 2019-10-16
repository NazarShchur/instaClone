import 'package:flutter/cupertino.dart';

class PostImage extends StatelessWidget{
  final String _imgUrl;
  final Function _doLike;
  PostImage(this._imgUrl, this._doLike);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Image(image: AssetImage(_imgUrl)),
      onDoubleTap: _doLike,
    );
  }

}