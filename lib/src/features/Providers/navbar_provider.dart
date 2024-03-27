import 'package:flutter/foundation.dart';

class BottomProviderController with ChangeNotifier {
  late int _navigationBarIndexValue;

  IndexChange(int initialIndex) {
    _navigationBarIndexValue = initialIndex;
  }

  int get navigationBarIndexValue => _navigationBarIndexValue;

  void navBarChange(int value) {
    _navigationBarIndexValue = value;
    notifyListeners();
  }
}
