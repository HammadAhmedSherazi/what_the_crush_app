import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/CrushScreen/widgets/report_abuse.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class message_header extends StatelessWidget {
  const message_header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Stack(alignment: Alignment.center, children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16),
                width: 65.w,
                height: 65.h,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.purpleP500, width: 3),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16),
                  width: 50.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/d1.png',
                    fit: BoxFit.cover,
                  )),
            ]),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SheetHeading(
                  txt: 'Penelope',
                ),
                Row(
                  children: [
                    Container(
                      width: 6.w,
                      height: 6.h,
                      decoration: BoxDecoration(
                          color: AppColors.green, shape: BoxShape.circle),
                    ),
                    5.horizontalSpace,
                    Text(
                      'Online',
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            color: AppColors.textPrimary,
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                          ),
                      overflow: TextOverflow.clip,
                      maxLines: 1,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
              barrierColor: Colors.transparent,
              isScrollControlled: true,
              context: context,
              builder: (BuildContext context) {
                return report_abuse();
              },
            );
          },
          child: Container(
            width: 45.w,
            height: 45.h,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1),
                // color: AppColors.bg,
                borderRadius: BorderRadius.circular(15)),
            child: Icon(CupertinoIcons.light_max),
          ),
        ),
      ],
    );
  }
}

class SheetHeading extends StatelessWidget {
  final String txt;
  SheetHeading({
    Key? key,
    required this.txt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(
        color: AppColors.purpleP500,
        fontWeight: FontWeight.w700,
        fontSize: 24.sp,
      ),
      overflow: TextOverflow.clip,
      maxLines: 1,
    );
  }
}
