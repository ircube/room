import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:room/Provider/sistema_electrico_provider.dart';

class Interruptor extends StatelessWidget {
  final int idFoco;
  Interruptor(this.idFoco);

  @override
  Widget build(BuildContext context) {
    final sistemaElectrico = Provider.of<SistemaElectricoProvider>(context);
    bool corriente = idFoco == 1
        ? sistemaElectrico.corriente1
        : sistemaElectrico.corriente2;

    return Container(
        child: Switch(
            value: corriente,
            onChanged: (value) {
              if (idFoco == 1) {
                sistemaElectrico.corriente1 = !sistemaElectrico.corriente1;
              } else {
                sistemaElectrico.corriente2 = !sistemaElectrico.corriente2;
              }
            }));
  }
}
