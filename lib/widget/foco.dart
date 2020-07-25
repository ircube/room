import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:room/Provider/sistema_electrico_provider.dart';

class Foco extends StatelessWidget {
  final Cable cable;
  Foco(this.cable);

  @override
  Widget build(BuildContext context) {
    final sistemaElectrico = Provider.of<SistemaElectricoProvider>(context);
    List<Cable> cables = sistemaElectrico.cables;

    List<Cable> stateCable =
        cables.where((element) => element.name == cable.name).toList();
    Cable currentCable;
    if (stateCable.length > 0) {
      currentCable = stateCable[0];
    }
    else {
      currentCable = cable;
      sistemaElectrico.cables = [...sistemaElectrico.cables, cable];
    }

    return Container(
        width: 100.0,
        height: 100.0,
        child: currentCable.isOn
            ? Image.asset('assets/lampOn.png')
            : Image.asset('assets/lamp.png'));

    // return Text('data');
  }
}
