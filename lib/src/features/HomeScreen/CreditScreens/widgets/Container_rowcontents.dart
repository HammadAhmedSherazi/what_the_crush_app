import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class Container_rowcontent extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final Color textColor;
  final VoidCallback onPressed;
  const Container_rowcontent({
    Key? key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.textColor,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text1,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: textColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 15.sp),
            ),
            Text(
              text2,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.w400,
                  fontSize: 10.sp),
            ),
          ],
        ),
        Text(
          text3,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: textColor, fontWeight: FontWeight.w800, fontSize: 20.sp),
        ),
        GestureDetector(
          onTap: onPressed,
          child: Container(
            // margin: EdgeInsets.symmetric(vertical: 10.h),
            width: 95.w,
            height: 35.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.red.withOpacity(0.1),
              // border: Border.all(
              //   color: AppColors.bgGray,
              // ),
            ),
            child: Center(
              child: Text(
                text4,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.red,
                    fontWeight: FontWeight.w400,
                    fontSize: 11.sp),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CreditsContainer1 extends StatelessWidget {
  final String txt;
  final bool showIcon;
  final Color textColor;

  const CreditsContainer1({
    Key? key,
    required this.txt,
    this.showIcon = true,
    this.textColor = Colors.purple,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 129.w,
      height: 40.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topRight: Radius.circular(10)),
        border: Border.all(color: textColor.withOpacity(0.2)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            txt,
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  color: textColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
          ),
          if (showIcon)
            Icon(
              Icons.check_circle,
              color: textColor,
              size: 20,
            ),
          if (!showIcon)
            Container(
                width: 18.w,
                height: 18.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Color(0xfff27121),
                      Color(0xffe94057),
                      Color(0xff8a2387),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topRight,
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 12.sp,
                  ),
                )),
        ],
      ),
    );
  }
}

class CounterRow extends StatefulWidget {
  const CounterRow({Key? key}) : super(key: key);

  @override
  _CounterRowState createState() => _CounterRowState();
}

class _CounterRowState extends State<CounterRow> {
  int count = 10;

  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    if (count > 0) {
      setState(() {
        count--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'top up creds',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Color(0xffF27121),
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
            ),
            Text(
              'expiresnever',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                  ),
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.remove_circle),
              onPressed: decrement,
              color: AppColors.textInactive,
            ),
            Text(
              '$count',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Color(0xffF27121),
                    fontWeight: FontWeight.w800,
                    fontSize: 20,
                  ),
            ),
            IconButton(
              icon: Icon(Icons.add_circle),
              onPressed: increment,
              color: AppColors.textInactive,
            ),
          ],
        ),
        Container(
          width: 90,
          height: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.red.withOpacity(0.1),
          ),
          child: Center(
            child: Text(
              'top up',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.red,
                    fontWeight: FontWeight.w400,
                    fontSize: 13.sp,
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
