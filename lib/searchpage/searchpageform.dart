import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta/data/constants.dart';

class SearchForm extends StatelessWidget{
  final controller;
  final Function action;

  SearchForm(this.action, this.controller);

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.only(
          left: Constants.globalSidePadding,
          right: Constants.globalSidePadding
      ),
      child: Row(
        children:[
          Icon(
            Icons.search,
            color: Colors.black,
            size: Constants.iconsSize,
          ),
          Expanded(
            child: TextField(
              onEditingComplete: action,
              controller: controller,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: Constants.SEARCH,
                contentPadding: EdgeInsets.all(20.0)
              ),
            ),
          )
        ],
      ),
    );
  }

}