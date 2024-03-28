import '../../../export_all.dart';

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

class BottomIndexNotifer extends StateNotifier<int> {
  BottomIndexNotifer(): super(0);
  void navBarChange(int value) {
   state = value;
  }
}

final bottomIndexProvider = StateNotifierProvider<BottomIndexNotifer, int>((ref) => BottomIndexNotifer());