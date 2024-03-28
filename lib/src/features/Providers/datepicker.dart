
// import 'package:provider/provider.dart';

// final dateOfBirthProvider = StateProvider<DateTime>((ref) => DateTime.now());


import '../../../export_all.dart';

class DateOfBirthProvider extends ChangeNotifier {
  DateTime _dateOfBirth = DateTime.now();

  DateTime get dateOfBirth => _dateOfBirth;

  void setDateOfBirth(DateTime newDate) {
    _dateOfBirth = newDate;
    notifyListeners();
  }
}

class DateNotifier extends StateNotifier<DateTime> {
  DateNotifier(): super(DateTime.now());

   void setDateOfBirth(DateTime newDate) {
    state = newDate;
   
  }
  
}
 final dateProvider = StateNotifierProvider<DateNotifier, DateTime>((ref) {
  return DateNotifier();
});