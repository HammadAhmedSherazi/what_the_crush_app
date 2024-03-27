DateTime updateDate(int year, int month, int day) {
  final currentDate = DateTime.now();
  final updatedDate = DateTime(
    year,
    month,
    day,
  );
  if (updatedDate.isAfter(currentDate)) {
    return currentDate;
  }

  return updatedDate;
}
