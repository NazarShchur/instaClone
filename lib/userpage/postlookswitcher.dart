import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostLookSwitcher extends StatelessWidget {
  final Function switchGrid;
  final Function switchList;
  final bool isGrid;

  PostLookSwitcher(this.switchGrid, this.switchList, this.isGrid);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          GestureDetector(
            onTap: switchGrid,
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: isGrid ? Colors.grey : Colors.white,
                          width: 3))),
              child: Icon(
                Icons.grid_on,
                size: 40,
              ),
            ),
          ),
          GestureDetector(
            onTap: switchList,
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: isGrid ? Colors.white : Colors.grey,
                          width: 3))),
              child: Icon(
                Icons.list,
                size: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
