
import 'package:flutter/material.dart';

class SistemaElectricoProvider with ChangeNotifier {
  bool _corriente1 = false;
  bool _corriente2 = true;
  get corriente1 {
    return _corriente1;
  }

  get corriente2 {
    return _corriente2;
  }

  set corriente1(bool corriente) {
    _corriente1 = corriente;
    notifyListeners();
  }
  set corriente2(bool corriente) {
    _corriente2 = corriente;
    notifyListeners();
  }
}
