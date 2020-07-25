import 'package:flutter/material.dart';

class Pared extends StatelessWidget {
  final List<Widget> items;
  Pared(this.items);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: items,
      ),
    );
  }
}
