import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/widgets/images_text_data.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class FriendsBody extends StatefulWidget {
  const FriendsBody({super.key});

  @override
  State<FriendsBody> createState() => _FriendsBodyState();
}

class _FriendsBodyState extends State<FriendsBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        20.verticalSpace,
        Expanded(
          child: GridView.builder(
            itemCount: ImageTextDataManager.imageTexts.length,
            itemBuilder: (BuildContext context, int index) {
              final imageTextData = ImageTextDataManager.imageTexts[index];
              final imageTextData2 = ImageTextDataManager.imageTexts2[index];
              return Column(
                children: [
                  Container(
                    width: 50.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.bgGray),
                      shape: BoxShape.circle,
                    ),
                    child: Stack(children: [
                      Image.asset(
                        imageTextData.imagePath,
                        // scale: 13.sp,
                      ),
                      Positioned(
                        left: 2.w,
                        right: 0,
                        top: 35.h,
                        child: Container(
                            // width: 10.w,
                            // height: 17.h,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColors.border,
                                width: 1,
                              ),
                              color: AppColors.white,
                            ),
                            child: Text(
                              textAlign: TextAlign.center,
                              imageTextData2.text,
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    color: AppColors.purpleP500,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10.sp,
                                  ),
                            )),
                      ),
                    ]),
                  ),
                  5.verticalSpace,
                  Text(
                    imageTextData.text,
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          color: AppColors.textPrimary,
                          fontWeight: FontWeight.w400,
                          fontSize: 11.sp,
                        ),
                  ),
                ],
              );
            },
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 0,
              mainAxisSpacing: 10.sp,
            ),
          ),
        ),
      ],
    );
  }
}
