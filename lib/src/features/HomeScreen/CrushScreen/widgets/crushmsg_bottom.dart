import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/CrushScreen/widgets/Sending_noncontactBottom.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/widgets/FilterButtons.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/Secondarybutton.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/widgets/ListTile_Container.dart';
import 'package:what_the_crush_app/src/widgets/SheetIndicator.dart';

class CushMsgBottomSheet extends StatefulWidget {
  const CushMsgBottomSheet({Key? key}) : super(key: key);

  @override
  State<CushMsgBottomSheet> createState() => _CushMsgBottomSheetState();
}

class _CushMsgBottomSheetState extends State<CushMsgBottomSheet> {
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
                                            text: 'gang (27)',
                                          ),
                                        ],
                                      ),
                                    )
                                  ])),
                          SizedBox(height: 20),
                          ListTile_Container(
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
                                    ListTile_Container(
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
                                    ListTile_Container(
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
                          ListTile_Container(
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
                                    ListTile_Container(
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
                          ListTile_Container(
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
                GestureDetector(
                  onTap: () {
                    // Navigator.of(context).popUntil((route) => route.isFirst);
                    showModalBottomSheet(
                      barrierColor: Colors.transparent,
                      isScrollControlled: true,
                      context: context,
                      builder: (BuildContext context) {
                        return Sending_nonContact();
                      },
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 250.w,
                        height: 55.h,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.88, 0.47),
                            end: Alignment(-0.88, -0.47),
                            colors: [
                              Color.fromRGBO(138, 35, 135, 0.1),
                              Color.fromRGBO(233, 64, 87, 0.1),
                              Color.fromRGBO(242, 113, 33, 0.1),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.send,
                                color: AppColors.purpleP500,
                                size: 23.sp,
                              ),
                              SizedBox(width: 10.w),
                              Text(
                                'send to a non-contact',
                                style: TextStyle(
                                  color: AppColors.red,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14.sp,
                                ),
                                overflow: TextOverflow.clip,
                                maxLines: 1,
                              ),
                            ]),
                      ),
                    ],
                  ),
                ),

                Divider(
                  indent: 20,
                  height: 15,
                ),

                9.verticalSpace,
                SecondaryButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 36.w),
                      child: Text(
                        '   send discreet crush message',
                        style: TextStyle(
                            color: AppColors.red,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    )),
                20.verticalSpace,
              ],
            ),
          ),
        );
      },
    );
  }
}
