import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/HomeProfileScreens/widgets/profileOthers1Header.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/widgets/FilterButtons.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/widgets/SheetIndicator.dart';

class profile_others_EmiliesgangSheet extends StatelessWidget {
  const profile_others_EmiliesgangSheet({super.key});

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
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Emelie’s gang',
                                            overflow: TextOverflow.ellipsis,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium
                                                ?.copyWith(
                                                  color: AppColors.purpleP500,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 24.sp,
                                                ),
                                          ),
                                          SizedBox(height: 2.h),
                                          Row(children: [
                                            Text('total members',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelMedium
                                                    ?.copyWith(
                                                      color: AppColors
                                                          .textInactive,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 14.sp,
                                                    )),
                                            10.horizontalSpace,
                                            Text('655',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelMedium
                                                    ?.copyWith(
                                                      color:
                                                          AppColors.purpleP700,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 14.sp,
                                                    )),
                                          ]),
                                        ],
                                      ),
                                      IconsContainer(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        icon: Icons.close,
                                      ),
                                    ],
                                  ),
                                  18.verticalSpace,
                                  Container(
                                    width: 334.w,
                                    height: 48.h,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border:
                                            Border.all(color: AppColors.border),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: TextField(
                                      // controller: SearchController,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'Search',
                                          hintStyle: Theme.of(context)
                                              .textTheme
                                              .bodyMedium,
                                          prefixIcon: Icon(
                                            CupertinoIcons.search,
                                            size: 20,
                                            color: AppColors.bgGray,
                                          )),
                                    ),
                                  ),
                                  Container(
                                      constraints: BoxConstraints(
                                        maxHeight: 41.h,
                                      ),
                                      child: ListView(
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            Container(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  CustomQuickFilterButton(
                                                    text: 'mutual',
                                                  ),
                                                  // 10.horizontalSpace,
                                                  const CustomQuickFilterButton(
                                                    text: 'my contacts',
                                                  ),
                                                  // 10.horizontalSpace,
                                                  const CustomQuickFilterButton(
                                                    text: 'gang (27)',
                                                  ),
                                                ],
                                              ),
                                            )
                                          ])),
                                  // Row(
                                  //   children: [
                                  Emilie_gang_container(),
                                  //     Emilie_gang_container(),
                                  //     Emilie_gang_container(),
                                  //     Emilie_gang_container(),
                                  //   ],
                                  // ),
                                ]),
                          )))
                ])));
      },
    );
  }
}

class Emilie_gang_container extends StatelessWidget {
  const Emilie_gang_container({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> texts = [
      '   You',
      'Chloe\nGarcia',
      '  Rose\nRuthford',
      '  Rose\nRuthford',
      'Chloe\nGarcia',
      'Chloe\nGarcia',
      '  Rose\nRuthford',
      'Chloe\nGarcia',
    ];
    return Container(
      height: 210.h,
      child: GridView.builder(
          itemCount: texts.length, // Total number of items
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, // Number of items per row
            crossAxisSpacing: 0, // Space between items horizontally
            mainAxisSpacing: 10.sp, // Space between items vertically
          ),
          itemBuilder: (context, index) {
            return Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 50.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.bgGray),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset('assets/images/d1.png'
                      // scale: 13.sp,
                      ),
                ),
                4.verticalSpace,
                Text(
                  texts[index],
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: AppColors.textPrimary,
                        fontWeight: FontWeight.w400,
                        fontSize: 9.sp,
                      ),
                ),
              ],
            );
          }),
    );
  }
}
