import 'package:flutter/material.dart';
import 'package:room/widget/foco.dart';

class Techo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70.0,
      color: Colors.grey[300],
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[Foco(1), Foco(2)],
      ),
    );
  }
}
