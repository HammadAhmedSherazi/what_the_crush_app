final List<int> years = List.generate(
  DateTime.now().year - 1949,
  (index) => DateTime.now().year - index,
);

Map<int, String> months = {
  1: 'Jan',
  2: 'Feb',
  3: 'Mar',
  4: 'Apr',
  5: 'May',
  6: 'June',
  7: 'July',
  8: 'Aug',
  9: 'Sept',
  10: 'Oct',
  11: 'Nov',
  12: 'Dec',
};
