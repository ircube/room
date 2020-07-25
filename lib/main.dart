import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:room/Provider/sistema_electrico_provider.dart';
import 'package:room/pages/cuarto.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: SistemaElectricoProvider()),
      ],
      child: MaterialApp(
        title: 'Material App',
        initialRoute: 'cuarto',
        routes: {'cuarto': (context) => Cuarto()},
      ),
    );
  }
}
