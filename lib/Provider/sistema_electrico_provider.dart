import 'package:flutter/material.dart';

class Cable with ChangeNotifier {
  String _name;
  bool _isOn;
  Cable(this._name, this._isOn);

  get name {
    return _name;
  }

  set name(String name) {
    _name = name;
    notifyListeners();
  }

  get isOn {
    return _isOn;
  }

  set isOn(bool isOn) {
    _isOn = isOn;
    print('CHANGE: $isOn');
    notifyListeners();
  }
}

class SistemaElectricoProvider with ChangeNotifier {
  List<Cable> _cables = [];
  
  get cables {
    return _cables;
  }

  set cables(List<Cable> cables) {
    _cables = cables;
    notifyListeners();
  }

}
