import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/CrushScreen/view/crush_message_screen.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/CrushScreen/widgets/crushmsg_bottom.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class CrushBody extends StatefulWidget {
  const CrushBody({Key? key}) : super(key: key);

  @override
  State<CrushBody> createState() => _CrushBodyState();
}

class _CrushBodyState extends State<CrushBody> {
  List<String> imageTexts = [
    'Emillie',
    '76a85267m',
    'Abigail',
    '76a85267g',
    'Penelope',
    'Chloe',
    'Olivia',
    'James'
  ];

  bool isButtonExpanded = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: Row(
                children: [
                  Text(
                    'all crush activity',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          color: AppColors.red,
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp,
                        ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.w),
                    height: 1.h,
                    width: 200.w,
                    color: AppColors.textInactive,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 29,
                ),
                itemCount: imageTexts.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            barrierColor: Colors.transparent,
                            isScrollControlled: true,
                            context: context,
                            builder: (BuildContext context) {
                              return crush_message_Screen();
                            },
                          );
                        },
                        child: Container(
                          width: 59.w,
                          height: 59.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Image.asset(
                                'assets/images/d1.png',
                                fit: BoxFit.cover,
                              ),
                              Positioned(
                                left: 40.w,
                                right: 0,
                                top: 0,
                                child: Container(
                                  width: 20.w,
                                  height: 20.h,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 2,
                                    ),
                                    color: AppColors.white,
                                  ),
                                  child: Icon(
                                    index.isEven
                                        ? Icons.arrow_outward
                                        : Icons.arrow_upward,
                                    color: AppColors.purpleP500,
                                    size: 12.sp,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 1.h),
                      Text(
                        imageTexts[index],
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  color: AppColors.textPrimary,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 9.sp,
                                ),
                      ),
                      Text(
                        '12/01/23',
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  color: AppColors.textInactive,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 9.sp,
                                ),
                      ),
                    ],
                  );
                },
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isButtonExpanded = !isButtonExpanded;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    width: isButtonExpanded ? 260.w : 60.w,
                    height: 55.h,
                    decoration: BoxDecoration(
                      gradient: isButtonExpanded
                          ? LinearGradient(
                              begin: Alignment(0.88, 0.47),
                              end: Alignment(-0.88, -0.47),
                              colors: [
                                Color.fromRGBO(138, 35, 135, 0.1),
                                Color.fromRGBO(233, 64, 87, 0.1),
                                Color.fromRGBO(242, 113, 33, 0.1),
                              ],
                            )
                          : null,
                      color: isButtonExpanded ? null : AppColors.mustard,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 15.w,
                        ),
                        Icon(
                          Icons.send,
                          color: AppColors.purpleP500,
                          size: 30.sp,
                        ),
                        if (isButtonExpanded)
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                showModalBottomSheet(
                                  isScrollControlled: true,
                                  context: context,
                                  builder: (BuildContext context) {
                                    return CushMsgBottomSheet();
                                  },
                                );
                                // Navigator.of(context).pop();
                              },
                              child: Text(
                                'send discreet crush message',
                                style: TextStyle(
                                  color: AppColors.red,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16.sp,
                                ),
                                overflow: TextOverflow.clip,
                                maxLines: 1,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            20.verticalSpace,
          ]),
    ));
  }
}
