import 'package:flutter/material.dart';
import 'package:room/widget/interruptor.dart';

import 'package:room/widget/pared.dart';
import 'package:room/widget/puerta.dart';
import 'package:room/widget/techo.dart';
import 'package:room/widget/ventana.dart';

class Cuarto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Room'),
      ),
      body: Column(
        children: <Widget>[
          Techo(),
          Pared([Interruptor(1), Puerta()]),
          Pared([Ventana()]),
          Pared([Interruptor(2), Puerta()])
        ],
      ),
    );
  }
}
