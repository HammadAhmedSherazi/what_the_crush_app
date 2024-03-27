import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:what_the_crush_app/src/features/Providers/datepicker.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class CalenderBody extends StatefulWidget {
  const CalenderBody({super.key});

  @override
  State<CalenderBody> createState() => _CalenderBodyState();
}

class _CalenderBodyState extends State<CalenderBody> {
  @override
  Widget build(BuildContext context) {
    final DateOfBirthProvider selectedDate =
        context.read<DateOfBirthProvider>();
    return TableCalendar<dynamic>(
      focusedDay: selectedDate.dateOfBirth,
      selectedDayPredicate: (day) => isSameDay(selectedDate.dateOfBirth, day),
      firstDay: DateTime(1950),
      lastDay: DateTime.now(),
      headerVisible: false,
      daysOfWeekVisible: false,
      onDaySelected: (selectedDay, focusedDay) {
        // onDaySelected(selectedDay, focusedDay);
        // selectedDate.setDateOfBirth(updatedDate);
        // context.read(dateOfBirthProvider.notifier).state = selectedDay;
        // setState(() {
        //   widget.focusedDay = selectedDay;
        // });
      },
      calendarStyle: CalendarStyle(
        selectedDecoration: const BoxDecoration(
          color: AppColors.purpleP500,
          shape: BoxShape.circle,
        ),
        selectedTextStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.w400,
            ),
        todayDecoration: BoxDecoration(
          color: AppColors.textInactive.withOpacity(0.5),
          shape: BoxShape.circle,
        ),
        todayTextStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: AppColors.purpleP500,
              fontWeight: FontWeight.w400,
            ),
        defaultTextStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: AppColors.black,
              fontWeight: FontWeight.w400,
            ),
        weekendTextStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: AppColors.black.withOpacity(0.5),
              fontWeight: FontWeight.w400,
            ),
      ),
      daysOfWeekStyle: DaysOfWeekStyle(
        weekdayStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: AppColors.purpleP700,
              fontWeight: FontWeight.w500,
            ),
        weekendStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: AppColors.black,
              fontWeight: FontWeight.w500,
            ),
      ),
    );
  }
}














// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:table_calendar/table_calendar.dart';
// import 'package:what_the_crush/config/theme/color/app_colors.dart';
// import 'package:what_the_crush/features/onboarding/presentation/providers/date_of_birth.dart';
// import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

// class CustomTableCalendarBody extends ConsumerWidget {
//   const CustomTableCalendarBody({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final selectedDate = ref.watch(dateOfBirthProvider);
//     return TableCalendar<dynamic>(
//       focusedDay: selectedDate,
//       selectedDayPredicate: (day) => isSameDay(selectedDate, day),
//       firstDay: DateTime(1950),
//       lastDay: DateTime.now(),
//       headerVisible: false,
//       daysOfWeekVisible: false,
      
//       onDaySelected: (selectedDay, focusedDay) {
//         // onDaySelected(selectedDay, focusedDay);
//         ref.read(dateOfBirthProvider.notifier).state = selectedDay;
//         // setState(() {
//         //   widget.focusedDay = selectedDay;
//         // });
//       },
//       calendarStyle: CalendarStyle(
//         selectedDecoration: const BoxDecoration(
//           color: AppColors.purpleP500,
//           shape: BoxShape.circle,
//         ),
//         selectedTextStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
//               color: AppColors.white,
//               fontWeight: FontWeight.w400,
//             ),
//         todayDecoration: BoxDecoration(
//           color: AppColors.textInactive.withOpacity(0.5),
//           shape: BoxShape.circle,
//         ),
//         todayTextStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
//               color: AppColors.purpleP500,
//               fontWeight: FontWeight.w400,
//             ),
//         defaultTextStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
//               color: AppColors.black,
//               fontWeight: FontWeight.w400,
//             ),
//         weekendTextStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
//               color: AppColors.black.withOpacity(0.5),
//               fontWeight: FontWeight.w400,
//             ),
//       ),
//       daysOfWeekStyle: DaysOfWeekStyle(
//         weekdayStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
//               color: AppColors.purpleP700,
//               fontWeight: FontWeight.w500,
//             ),
//         weekendStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
//               color: AppColors.black,
//               fontWeight: FontWeight.w500,
//             ),
//       ),
//     );
//   }
// }
