import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:what_the_crush_app/src/features/Providers/datepicker.dart';
import 'package:what_the_crush_app/src/features/WelcomeScreens/ValidAge.dart/view/Valid_age.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/primarybutton.dart';
import 'package:what_the_crush_app/src/widgets/CalenderHeader.dart';
import 'package:what_the_crush_app/src/widgets/Calenderbody.dart';

class CustomDatePicker extends StatelessWidget {
  const CustomDatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    final DateOfBirthProvider selectedDate =
        context.read<DateOfBirthProvider>();
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 40,
        right: 40,
      ),
      child: Column(
        children: [
          CalenderHeader(),
          20.verticalSpace,
          CalenderBody(),
          20.verticalSpace,
          PrimaryButton(
            text: 'Save',
            onPressed: () {
              // if (ageCheck(selectedDate.dateOfBirth)) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ValidAgeScreen()));
              // Navigator.of(context).popAndPushNamed('/ValidAge');
              // } else {
              //   Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //           builder: (context) => InvalidAgeScreen()));
              // }
            },
          ),
          20.verticalSpace,
        ],
      ),
    );
  }
}

// class CustomDatePicker extends ConsumerWidget {
//   const CustomDatePicker({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final selectedDate = ref.watch(dateOfBirthProvider);

    // return Padding(
    //   padding: const EdgeInsets.only(
    //     top: 20,
    //     left: 40,
    //     right: 40,
    //   ),
    //   child: Column(
    //     children: [
    //       const CustomTableCalenderHeader(),
    //       20.verticalSpace,
    //       const CustomTableCalendarBody(),
    //       20.verticalSpace,
    //       PrimaryButton(
    //         text: 'Save',
    //         onPressed: () {
    //           if (ageCheck(selectedDate)) {
    //             Navigator.of(context).popAndPushNamed('/ValidAge');
    //           } else {
    //             Navigator.of(context).popAndPushNamed('/InvalidAge');
    //           }
    //         },
    //       ),
    //       20.verticalSpace,
    //     ],
    //   ),
    // );
//   }
// }
