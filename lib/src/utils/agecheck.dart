bool ageCheck(DateTime selectedDate) {
  final today = DateTime.now();
  if (selectedDate.year == today.year) {
    return false;
  }
  if (today.year - selectedDate.year > 18) {
    return true;
  }
  final minimumDate = DateTime(
    today.year - 18,
    today.month,
    today.day + 1,
  );

  return selectedDate.isBefore(minimumDate);
}
