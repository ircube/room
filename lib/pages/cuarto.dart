import 'package:flutter/material.dart';
import 'package:room/Provider/sistema_electrico_provider.dart';

import 'package:room/widget/foco.dart';
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
          Techo([
            Foco(Cable("a", false)),
            Foco(Cable("a", false)),
            // Foco(Cable("c", false)),
            // Foco(Cable("d", false))
          ]),
          Pared(
              [
                Interruptor(Cable("a", false))
              , Interruptor(Cable("b", false))
              ]),
          // Pared(
          //     [Interruptor(Cable("c", false)), Interruptor(Cable("d", false))]),
        ],
      ),
    );
  }
}
