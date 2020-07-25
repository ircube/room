import 'package:flutter/material.dart';

class Puerta extends StatefulWidget {
  @override
  _PuertaState createState() => _PuertaState();
}

class _PuertaState extends State<Puerta> {
  bool isOpen = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isOpen = !isOpen;
        });
      },
      child: Container(
          width: 100.0,
          height: 100.0,
          child: isOpen
              ? Image.asset('assets/doorOpen.png')
              : Image.asset('assets/door.png')),
    );
  }
}
