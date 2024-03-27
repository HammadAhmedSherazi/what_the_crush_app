import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class ListTile_Container extends StatefulWidget {
  final String txt;
  final String txt2;

  ListTile_Container({
    Key? key,
    required this.txt,
    required this.txt2,
  }) : super(key: key);

  @override
  State<ListTile_Container> createState() => _ListTile_ContainerState();
}

class _ListTile_ContainerState extends State<ListTile_Container> {
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
              checkColor: Color(0xffE94057),
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
              leading: Container(
                width: 45.w,
                height: 45.w,
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
                  child: Container(
                    width: 40.w,
                    height: 40.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white, // Adjust this color as needed
                    ),
                    child: Center(
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/d1.png'),
                        radius: 18.w,
                      ),
                    ),
                  ),
                ),
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
                  18.horizontalSpace,
                  Text(
                    widget.txt2,
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 9.sp,
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

class ListTileSimpleAvatar extends StatefulWidget {
  final String txt;
  final String txt2;
  const ListTileSimpleAvatar({
    Key? key,
    required this.txt,
    required this.txt2,
  }) : super(key: key);

  @override
  State<ListTileSimpleAvatar> createState() => _ListTileSimpleAvatarState();
}

class _ListTileSimpleAvatarState extends State<ListTileSimpleAvatar> {
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
              checkColor: Color(0xffE94057),
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
                radius: 20.w,
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
