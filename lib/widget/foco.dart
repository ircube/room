import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:room/Provider/sistema_electrico_provider.dart';

class Foco extends StatelessWidget {
  final int idFoco;
  Foco(this.idFoco);

  @override
  Widget build(BuildContext context) {
    final sistemaElectrico = Provider.of<SistemaElectricoProvider>(context);
    bool corriente =
        idFoco == 1 ? sistemaElectrico.corriente1 : sistemaElectrico.corriente2;
    return Container(
        width: 100.0,
        height: 100.0,
        child:
            corriente
                ? Image.asset('assets/lampOn.png')
                : Image.asset('assets/lamp.png'));
  }
}
