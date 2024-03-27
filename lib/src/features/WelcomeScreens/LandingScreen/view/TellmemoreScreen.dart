import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class Tellmemore_Screen extends StatelessWidget {
  const Tellmemore_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        decoration: BoxDecoration(),
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
                    color: AppColors.red,
                    size: 18,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 17,
              left: 10,
              child: Text(
                'how it works!',
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    color: AppColors.red,
                    fontWeight: FontWeight.w700,
                    fontSize: 34.sp),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
