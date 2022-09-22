import 'package:flutter/material.dart';

Widget getItem(String title, Icon icon, Color color) {
  return Container(
   decoration: new BoxDecoration(
      color: color, //new Color.fromRGBO(255, 0, 0, 0.0),
      borderRadius: new BorderRadius.only(
          topLeft:  const  Radius.circular(40.0),
          bottomLeft: const  Radius.circular(40.0))
  ),
    child: Row(children: [
      ListTile(
        title: Text(title),
        trailing: icon,
      ),
    ]),
  );
}
