import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/constants.dart';

class BotPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: Constants.botPanelPadding, bottom: Constants.botPanelPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              size: Constants.botPanelIconsSize,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              size: Constants.botPanelIconsSize,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/search',);
            },
          ),
          IconButton(
            icon: Icon(
              Icons.add_box,
              size: Constants.botPanelIconsSize,
            ),
            onPressed: (){
              Navigator.pushNamed(context, '/test');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.favorite_border,
              size: Constants.botPanelIconsSize,
            ),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.account_circle, size: Constants.botPanelIconsSize),
            onPressed: (){},
          ),
        ],
      ),
    );
  }
}
