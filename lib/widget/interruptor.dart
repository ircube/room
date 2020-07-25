import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:room/Provider/sistema_electrico_provider.dart';

class Interruptor extends StatelessWidget {
  final Cable cable;
  Interruptor(this.cable);

  @override
  Widget build(BuildContext context) {
    final sistemaElectrico = Provider.of<SistemaElectricoProvider>(context);
    List<Cable> cables = sistemaElectrico.cables;

    List<Cable> stateCable =
        cables.where((element) => element.name == cable.name).toList();
    Cable currentCable;
    if (stateCable.length > 0) {
      print('** stateCable.length > 0');
      currentCable = stateCable[0];
    } else {
      print('** else');
      sistemaElectrico.cables = [...sistemaElectrico.cables, cable];
      currentCable = cable;
    }


    return Container(
        child: Switch(
            value: currentCable.isOn,
            onChanged: (value) {
              currentCable.isOn = !currentCable.isOn;
              sistemaElectrico.cables = [
                ...sistemaElectrico.cables,
                currentCable
              ];
            }));
  }
}
