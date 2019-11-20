import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta/data/constants.dart';

class TopPanel extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.ltr,
        child: Container(
          padding: EdgeInsets.only(
              top: Constants.topPanelTopPadding,
              left: Constants.globalSidePadding,
              right: Constants.globalSidePadding,
              bottom: Constants.topPanelBotPadding),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Colors.grey,
                      width: Constants.topPanelBotBorderWidth))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.photo_camera,
                    size: Constants.iconsSize,
                  ),
                  Text("KPInstagram",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: Constants.logoFontSize)),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.live_tv,
                    size: Constants.iconsSize,
                  ),
                  Icon(
                    Icons.message,
                    size: Constants.iconsSize,
                  )
                ],
              )
            ],
          ),
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(50.0);
}
