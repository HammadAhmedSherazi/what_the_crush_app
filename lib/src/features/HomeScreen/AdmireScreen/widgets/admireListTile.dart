import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class admire_ImageAvatar extends StatefulWidget {
  final String txt;
  final String txt2;
  

  admire_ImageAvatar({
    Key? key,
    required this.txt,
    required this.txt2,
    
  }) : super(key: key);

  @override
  State<admire_ImageAvatar> createState() => _admire_ImageAvatarState();
}

class _admire_ImageAvatarState extends State<admire_ImageAvatar> {
  bool? _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 10.w,
          height: 10.h,
          child: Checkbox(
              activeColor: AppColors.border.withOpacity(0.6),
              side: BorderSide(color: AppColors.bgGray),
              // activeColor: Colors.white,
              checkColor: Colors.black,
              value: _isChecked,
              onChanged: (bool? newValue) {
                setState(() {
                  _isChecked = newValue;
                });
              }),
        ),
        Expanded(
          child: Container(
            width: 230.w,
            height: 50.h,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/d1.png'),
                radius: 18.w,
              ),
              title: Text(
                widget.txt,
                style: Theme.of(context)
                    .textTheme
                    .displaySmall
                    ?.copyWith(fontWeight: FontWeight.w500, fontSize: 14.sp),
              ),
              subtitle: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '+1 (262) 287-6361',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp,
                        color: AppColors.bgGray),
                  ),
                  20.horizontalSpace,
                  Text(
                    widget.txt2,
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp,
                        color: AppColors.bgGray),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class OuterCircleContainer extends StatefulWidget {
  final String txt;
  final String txt2;

  const OuterCircleContainer({
    Key? key,
    required this.txt,
    required this.txt2,
  }) : super(key: key);

  @override
  State<OuterCircleContainer> createState() => _OuterCircleContainerState();
}

class _OuterCircleContainerState extends State<OuterCircleContainer> {
  bool? _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 10.w,
          height: 10.h,
          child: Checkbox(
              activeColor: AppColors.border.withOpacity(0.6),
              side: BorderSide(color: AppColors.bgGray),
              // activeColor: Colors.white,
              checkColor: Colors.black,
              value: _isChecked,
              onChanged: (bool? newValue) {
                setState(() {
                  _isChecked = newValue;
                });
              }),
        ),
        Expanded(
          child: Container(
            width: 230.w,
            height: 50.h,
            child: ListTile(
              leading: Stack(
                children: [
                  Container(
                    width: 40.w,
                    height: 40.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF833ab4),
                          Color(0xFFfd1d1d),
                          Color(0xFFfcb045),
                        ],
                      ),
                    ),
                    child: Center(
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/d1.png'),
                        radius: 18.w,
                      ),
                    ),
                  )
                ],
              ),
              title: Text(
                widget.txt,
                style: Theme.of(context)
                    .textTheme
                    .displaySmall
                    ?.copyWith(fontWeight: FontWeight.w500, fontSize: 14.sp),
              ),
              subtitle: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '+1 (262) 287-6361',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp,
                        color: AppColors.bgGray),
                  ),
                  20.horizontalSpace,
                  Text(
                    widget.txt2,
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp,
                        color: AppColors.bgGray),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
