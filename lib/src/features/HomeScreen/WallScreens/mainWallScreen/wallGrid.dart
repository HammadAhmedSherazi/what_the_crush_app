import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class WallGrid extends StatefulWidget {
  final String img;
  final String txt1;
  final String txt2;
   WallGrid({
    Key? key,
    required this.img, required this.txt1, required this.txt2,
  }) : super(key: key);

  @override
  State<WallGrid> createState() => _WallGridState();
}

class _WallGridState extends State<WallGrid> {
  // List nametxt = ['Leilani', 'Annabelle', 'Hadley', 'Anika'];

  @override
  Widget build(BuildContext context) {
    return 
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            width: 159.w,
            height: 200.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    widget.img,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 8,
                    left: 8,
                    child: Row(
                      children: [
                        Text(widget.txt1,
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13.sp)),
                        SizedBox(
                          width: 70,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: AppColors.red,
                              size: 15.sp,
                            ),
                            Text(widget.txt2,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium
                                    ?.copyWith(
                                        color: AppColors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13.sp)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }}


