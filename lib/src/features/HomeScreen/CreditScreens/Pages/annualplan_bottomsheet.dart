import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class annualplan_bottomsheet extends StatelessWidget {
  const annualplan_bottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.75, // Set the initial size of the sheet
      minChildSize: 0.50, // Set the minimum size of the sheet
      maxChildSize: 1.0, // Set the maximum size of the sheet
      expand: false, // Set to true for full screen
      builder: (BuildContext context, ScrollController scrollController) {
        return Scaffold(
            body: Container(
          // margin: EdgeInsetsDirectional.symmetric(horizontal: 10),
          // width: 376.w,
          // height: 659.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(14)),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  'assets/images/wallimage2.jpeg',
                  fit: BoxFit.cover,
                ),
                Positioned(
                  right: 17,
                  top: 17,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      // padding: const EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                            color: AppColors.white.withOpacity(0.3), width: 1),
                      ),
                      width: 45,
                      height: 45,
                      child: const Icon(
                        Icons.close,
                        color: AppColors.purpleP500,
                        size: 18,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 17,
                  left: 10,
                  child: Text(
                    'annual plan',
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        color: AppColors.purpleP500,
                        fontWeight: FontWeight.w700,
                        fontSize: 34.sp),
                  ),
                ),
              ],
            ),
          ),
        ));
      },
    );
  }
}
