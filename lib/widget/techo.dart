import 'package:flutter/material.dart';

class Techo extends StatelessWidget {
  final List<Widget> items;
  Techo(this.items);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70.0,
      color: Colors.grey[300],
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: items,
      ),
    );
  }
}
