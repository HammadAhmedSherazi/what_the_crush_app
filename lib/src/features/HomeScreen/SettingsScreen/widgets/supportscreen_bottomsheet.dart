import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/SettingsScreen/widgets/video_bottomsheet.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/widgets/SheetIndicator.dart';

class SupportBottomSheet extends StatelessWidget {
  const SupportBottomSheet({super.key});

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
                  color: AppColors.white,
                ),
                child: Column(children: [
                  // Draggablehandle bar
                  SheetIndicator(),
                  Expanded(
                      child: SingleChildScrollView(
                    controller: scrollController,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.w, vertical: 16.h),
                          child: Text(
                            'can i transfer my balance credits ',
                            textAlign: TextAlign.start,
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge
                                ?.copyWith(
                                    color: AppColors.red,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15.w),
                          width: 270.w,
                          height: 260.h,
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Facilisi morbi tempus iaculis urna id volutpat. Mi proin sed libero enim sed faucibus turpis. Convallis tellus id interdum velit laoreet id donec ultrices. At quis risus sed vulputate odio ut enim blandit. Lacus viverra vitae congue eu consequat ac felis donec et. Vitae elementum curabitur vitae nunc sed velit dignissim sodales. In cursus turpis massa tincidunt dui ut. Laoreet non curabitur gravida arcu ac tortor. Habitant morbi tristique senectus et netus et. Sit amet aliquam id diam maecenas ultricies mi. Nulla at volutpat diam ut venenatis tellus in metus.",
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge
                                ?.copyWith(
                                    color: AppColors.black,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1),
                          ),
                        ),
                        Stack(children: [
                          GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                  barrierColor: Colors.black.withOpacity(0.1),
                                  isScrollControlled: true,
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Video_BottomSheet();
                                  });
                            },
                            child: Container(
                                margin: EdgeInsets.symmetric(vertical: 10.h),
                                //
                                child: Image.asset(
                                  'assets/images/thumbnail.png',
                                )),
                          ),
                          Container(
                              margin: EdgeInsets.symmetric(vertical: 26.h),
                              width: 377.w,
                              height: 166.h,
                              child: IconButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                      barrierColor:
                                          Colors.black.withOpacity(0.1),
                                      isScrollControlled: true,
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Video_BottomSheet();
                                      },
                                    );
                                  },
                                  icon: Icon(
                                    Icons.play_circle_filled_rounded,
                                    color: Colors.white,
                                    size: 50.sp,
                                  )))
                        ]),
                      ],
                    ),
                  ))
                ])));
      },
    );
  }
}
