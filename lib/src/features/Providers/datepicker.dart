
// import 'package:provider/provider.dart';

// final dateOfBirthProvider = StateProvider<DateTime>((ref) => DateTime.now());
import 'package:flutter/material.dart';

class DateOfBirthProvider extends ChangeNotifier {
  DateTime _dateOfBirth = DateTime.now();

  DateTime get dateOfBirth => _dateOfBirth;

  void setDateOfBirth(DateTime newDate) {
    _dateOfBirth = newDate;
    notifyListeners();
  }
}