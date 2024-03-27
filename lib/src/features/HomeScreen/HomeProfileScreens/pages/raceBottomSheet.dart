import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/AuthScreens/Build_Profile/identitiyScreen.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/primarybutton.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/widgets/SheetIndicator.dart';
// ignore: unused_import
import 'package:what_the_crush_app/src/widgets/select_interest.dart';

class race_BottomSheet extends StatelessWidget {
  const race_BottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.65, // Set the initial size of the sheet
      minChildSize: 0.50, // Set the minimum size of the sheet
      maxChildSize: 1.0, // Set the maximum size of the sheet
      expand: false, // Set to true for full screen
      builder: (BuildContext context, ScrollController scrollController) {
        return Scaffold(
            body: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(0.15.sw)),
                  color: AppColors.bg,
                ),
                child: Column(children: [
                  // Draggablehandle bar
                  SheetIndicator(),
                  Expanded(
                      child: SingleChildScrollView(
                    controller: scrollController,
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Center(
                            child: Text(
                              'race ',
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge
                                  ?.copyWith(
                                      color: AppColors.purpleP500,
                                      fontSize: 24.sp,
                                      fontWeight: FontWeight.w700),
                            ),
                          ),
                          29.verticalSpace,
                          IdentityContainer(txt: "white"),
                          10.verticalSpace,
                          IdentityContainer(txt: "hispanic or latinx"),
                          10.verticalSpace,
                          IdentityContainer(txt: "black or african american"),
                          10.verticalSpace,
                          IdentityContainer(txt: "asian"),
                          10.verticalSpace,
                          IdentityContainer(txt: "indian subcontinent"),
                          10.verticalSpace,
                          IdentityContainer(txt: "middle eastern or arab"),
                          36.verticalSpace,
                          PrimaryButton(
                              text: 'save',
                              onPressed: () {
                                Navigator.of(context).pop();
                              })
                        ],
                      ),
                    ),
                  ))
                ])));
      },
    );
  }
}
