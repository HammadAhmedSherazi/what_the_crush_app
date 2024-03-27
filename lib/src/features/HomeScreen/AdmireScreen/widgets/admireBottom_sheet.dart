import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/AdmireScreen/widgets/admireListTile.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/AdmireScreen/widgets/admireScreen2.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/widgets/FilterButtons.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/primarybutton.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/widgets/SheetIndicator.dart';

class admireBottom_Sheet extends StatefulWidget {
  const admireBottom_Sheet({Key? key}) : super(key: key);

  @override
  State<admireBottom_Sheet> createState() => _admireBottom_SheetState();
}

class _admireBottom_SheetState extends State<admireBottom_Sheet> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.85, // Set the initial size of the sheet
      minChildSize: 0.75, // Set the minimum size of the sheet
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
            child: Column(
              children: [
                // Draggablehandle bar
                SheetIndicator(),
                Expanded(
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 334.w,
                            height: 48.h,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: AppColors.border),
                                borderRadius: BorderRadius.circular(15)),
                            child: TextField(
                              // controller: SearchController,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Search',
                                  hintStyle:
                                      Theme.of(context).textTheme.bodyMedium,
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
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomQuickFilterButton(
                                            text: 'my contacts (98)',
                                          ),
                                          // 10.horizontalSpace,
                                          const CustomQuickFilterButton(
                                            text: 'friends (86)',
                                          ),
                                          // 10.horizontalSpace,
                                          const CustomQuickFilterButton(
                                            text: 'blocked (27)',
                                          ),
                                        ],
                                      ),
                                    )
                                  ])),
                          SizedBox(height: 20),
                          OuterCircleContainer(
                            txt: 'Emelie',
                            txt2: 'em.elie@outlook.com',
                          ),
                          Divider(
                            indent: 70,
                            height: 15,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    admire_ImageAvatar(
                                      txt: 'Abigail ',
                                      txt2: 'abigail@outlook.com',
                                    ),
                                  ],
                                ),
                              ),
                              Icon(
                                Icons.favorite_outline,
                                size: 15.sp,
                                color: AppColors.bgGray,
                              ),
                            ],
                          ),
                          Divider(
                            indent: 70,
                            height: 15,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    OuterCircleContainer(
                                      txt: 'Stephannie ',
                                      txt2: 'step.hen@outlook.com',
                                    ),
                                  ],
                                ),
                              ),
                              Icon(
                                Icons.arrow_outward,
                                size: 15.sp,
                                color: AppColors.bgGray,
                              ),
                            ],
                          ),
                          // ListTile_Container(
                          //   txt: 'Stephannie ',
                          //   txt2: 'step.hen@outlook.com',
                          // ),
                          Divider(
                            indent: 70,
                            height: 15,
                          ),
                          admire_ImageAvatar(
                            txt: 'Penelope ',
                            txt2: 'pen.lop@outlook.com',
                          ),
                          Divider(
                            indent: 70,
                            height: 15,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    admire_ImageAvatar(
                                      txt: ' Chloe',
                                      txt2: 'ch.loe@outlook.com',
                                    ),
                                  ],
                                ),
                              ),
                              Icon(
                                Icons.close,
                                size: 15.sp,
                                color: AppColors.bgGray,
                              ),
                            ],
                          ),
                          // ListTile_Container(
                          //   txt: 'Chloe',
                          //   txt2: 'ch.loe@outlook.com',
                          // ),
                          Divider(
                            indent: 70,
                            height: 15,
                          ),
                          OuterCircleContainer(
                            txt: 'Fatima',
                            txt2: 'fat.imo@outlook.com',
                          ),
                          Divider(
                            indent: 70,
                            height: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Divider(
                  indent: 20,
                  height: 15,
                ),

                9.verticalSpace,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: PrimaryButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AdmireScreen2()));
                    },
                    text: 'discreetly admire (follow)',
                  ),
                ),
                20.verticalSpace,
              ],
            ),
          ),
        );
      },
    );
  }
}
