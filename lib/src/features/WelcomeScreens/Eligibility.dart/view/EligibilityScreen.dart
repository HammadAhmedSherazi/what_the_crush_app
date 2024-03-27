import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/Secondarybutton.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/SkipButton.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/widgets/Customdatepicker.dart';
import 'package:what_the_crush_app/src/widgets/SheetIndicator.dart';

class EligibiltyScreen extends StatefulWidget {
  const EligibiltyScreen({super.key});

  @override
  State<EligibiltyScreen> createState() => _EligibiltyScreenState();
}

class _EligibiltyScreenState extends State<EligibiltyScreen> {
  Future<DraggableScrollableSheet?> calenderModalBottomsheet(
    BuildContext context,
  ) =>
      showModalBottomSheet<DraggableScrollableSheet?>(
        context: context,
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(0.15.sw)),
        ),
        // showDragHandle: true,
        isScrollControlled: true,
        useSafeArea: true,
        builder: (BuildContext context) {
          return DraggableScrollableSheet(
              initialChildSize: 0.75, // Set the initial size of the sheet
              minChildSize: 0.75, // Set the minimum size of the sheet
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Scaffold(
                  body: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(0.15.sw)),
                      color: AppColors.bg,
                    ),
                    child: Column(
                      children: [
                        // Draggablehandle bar
                        SheetIndicator(),
                        Expanded(
                          child: SingleChildScrollView(
                            controller: scrollController,
                            child: GestureDetector(
                              child: const Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomDatePicker(),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              });
        },
      );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
              constraints: BoxConstraints(
                minHeight: 1.sh,
                minWidth: 1.sw,
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/onboarding_bg.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                      child: Column(children: [
                    20.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [CustomSkipButton()],
                    ),
                    Center(
                        child:
                            Image.asset('assets/images/eligibility_main.png')),
                    40.verticalSpace,
                    SizedBox(
                      // 75% of screen width
                      width: 0.75.sw,
                      child: Text(
                        "let's check your eligibility for free trial",
                        textAlign: TextAlign.left,
                        textScaleFactor: 1,
                        style:
                            Theme.of(context).textTheme.displayLarge?.copyWith(
                                  color: AppColors.purpleP700,
                                ),
                      ),
                    ),
                    40.verticalSpace,
                    SizedBox(
                      width: 0.8.sw,
                      child: Text(
                        'you must be of legal age to use this app.',
                        textAlign: TextAlign.left,
                        textScaleFactor: 1,
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              color: AppColors.blueP100,
                              letterSpacing: 0.1,
                            ),
                      ),
                    ),
                    30.verticalSpace,
                    SecondaryButton(
                      onPressed: () {
                        calenderModalBottomsheet(context);
                      },
                      child: Row(
                        children: [
                          const Icon(Icons.calendar_month,
                              color: AppColors.red),
                          10.horizontalSpace,
                          Text(
                            'choose your birth date',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(
                                  color: AppColors.red,
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                        ],
                      ),
                    )
                  ]))))),
    );
  }
}

//    