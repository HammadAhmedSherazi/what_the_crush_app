import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/GangScreen/view/connected_gangs_header.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/widgets/images_text_data.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class ConnectedGangsBody extends StatefulWidget {
  const ConnectedGangsBody({super.key});

  @override
  State<ConnectedGangsBody> createState() => _ConnectedGangsBodyState();
}

class _ConnectedGangsBodyState extends State<ConnectedGangsBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Text('people who invited you (21)',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w800,
                      color: AppColors.red,
                      height: 3.sp,
                    ))),
        Expanded(
          child: connected_gangs_Header(),
        ),
        Flexible(
          flex: 2,
          child: Container(
            width: 379.w,
            height: 0.4.sh,
            decoration: BoxDecoration(
                color: AppColors.bg.withOpacity(0.8),
                border: Border.all(color: AppColors.border, width: 1)),
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Center(
                    child: Text('members of all gangs you are part of (655)',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.textPrimary,
                              height: 4.sp,
                            ))),
                Expanded(
                  child: GridView.builder(
                    itemCount: ImageTextDataManager.imageTexts.length,
                    itemBuilder: (BuildContext context, int index) {
                      final imageTextData =
                          ImageTextDataManager.imageTexts[index];
                      return Column(
                        children: [
                          Container(
                            width: 50.w,
                            height: 50.h,
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColors.bgGray),
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              imageTextData.imagePath,
                              // scale: 13.sp,
                            ),
                          ),
                          5.verticalSpace,
                          Text(
                            imageTextData.text,
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                  color: AppColors.textPrimary,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10.sp,
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
            ),
          ),
        )
      ],
    );
  }
}
