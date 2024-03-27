import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:what_the_crush_app/src/features/Providers/datepicker.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/utils/constants.dart';
import 'package:what_the_crush_app/src/utils/updatedate.dart';
import 'package:what_the_crush_app/src/widgets/customdropdown.dart';

class CalenderHeader extends StatefulWidget {
  const CalenderHeader({super.key});

  @override
  State<CalenderHeader> createState() => _CalenderHeaderState();
}

class _CalenderHeaderState extends State<CalenderHeader> {
  @override
  Widget build(
    BuildContext context,
  ) {
    final DateOfBirthProvider selectedDate =
        context.read<DateOfBirthProvider>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            final year = selectedDate.dateOfBirth.month == 1
                ? selectedDate.dateOfBirth.year - 1
                : selectedDate.dateOfBirth.year;
            final month = selectedDate.dateOfBirth.month == 1
                ? 12
                : selectedDate.dateOfBirth.month - 1;
            final day = selectedDate.dateOfBirth.day;
            final updatedDate = DateTime(year, month, day);

            // Update date of birth using DateOfBirthProvider's method
            selectedDate.setDateOfBirth(updatedDate);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppColors.black,
          ),
        ),
        Column(
          children: [
            Text(
              'Birthday',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppColors.black,
                  ),
            ),
            const SizedBox(height: 10),
            CustomDropdown(
              items: years,
              value: selectedDate.dateOfBirth.year,
              onChanged: (value) {
                if (value == null) {
                  return;
                }
                final updatedYear = updateDate(
                  value as int,
                  selectedDate.dateOfBirth.month,
                  selectedDate.dateOfBirth.day,
                );
                if (updatedYear.isAfter(DateTime.now())) {
                  return;
                }
                //  selectedDate.setDateOfBirth(updatedDate);
                //  context.read(selectedDate.no) selectedDate.state = updatedYear;
                // ref.read(dateOfBirthProvider.notifier).state = updatedYear;
              },
              selectedItemStyle:
                  Theme.of(context).textTheme.displayLarge?.copyWith(
                        color: AppColors.purpleP500,
                        fontWeight: FontWeight.w400,
                      ),
              isDense: false,
            ),
            // const SizedBox(height: 10),
            CustomDropdown(
              items: months.values.toList(),
              value: months[selectedDate.dateOfBirth.month],
              onChanged: (value) {
                if (value == null) {
                  return;
                }
                final updatedMonth = updateDate(
                  selectedDate.dateOfBirth.year,
                  months.keys.firstWhere(
                    (element) => months[element] == value,
                  ),
                  selectedDate.dateOfBirth.day,
                );
                if (updatedMonth.isAfter(DateTime.now())) {
                  return;
                }
                // selectedDate.setDateOfBirth(updatedDate);
                //  selectedDate.notifier.state = updatedMo;
              },
            ),
          ],
        ),
        IconButton(
          onPressed: () {
            final year = selectedDate.dateOfBirth.month == 1
                ? selectedDate.dateOfBirth.year - 1
                : selectedDate.dateOfBirth.year;
            final month = selectedDate.dateOfBirth.month == 1
                ? 12
                : selectedDate.dateOfBirth.month - 1;
            final day = selectedDate.dateOfBirth.day;
            final updatedDate = DateTime(year, month, day);

            // Update date of birth using DateOfBirthProvider's method
            selectedDate.setDateOfBirth(updatedDate);
          },
          icon: Icon(
            Icons.arrow_forward_ios,
            color: selectedDate.dateOfBirth.year == DateTime.now().year &&
                    selectedDate.dateOfBirth.month == DateTime.now().month
                ? AppColors.black.withOpacity(0.4)
                : AppColors.black,
          ),
        ),
      ],
    );
  }
}
