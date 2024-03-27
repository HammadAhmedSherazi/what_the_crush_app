import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/widgets/images_text_data.dart';

import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class MyGangBody extends StatefulWidget {
  const MyGangBody({Key? key}) : super(key: key);

  @override
  State<MyGangBody> createState() => _MyGangBodyState();
}

class _MyGangBodyState extends State<MyGangBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            10.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      width: 50.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.bgGray),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.add,
                        color: AppColors.purpleP500,
                        size: 35.sp,
                      ),
                    ),
                    Text(
                      "invite contacts\n to your gang",
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            color: AppColors.purpleP500,
                            fontWeight: FontWeight.w400,
                            fontSize: 11.sp,
                          ),
                    ),
                  ],
                ),
                // SizedBox(width: 10.w),

                RowContainers(
                  txt: 'Chloe\nGarcia',
                ),
                RowContainers(
                  txt: '  Rose\nRuthford',
                ),
                RowContainers(
                  txt: 'Chloe\nGarcia',
                ),
              ],
            ),
            15.verticalSpace,
            Container(
              height: 1.sh,
              width: double.infinity,
              child: GridView.builder(
                itemCount: ImageTextDataManager.imageTexts.length,
                itemBuilder: (BuildContext context, int index) {
                  final imageTextData = ImageTextDataManager.imageTexts[index];
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
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  color: AppColors.textPrimary,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 9.sp,
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
    );
  }
}

class RowContainers extends StatelessWidget {
  final String txt;
  const RowContainers({
    Key? key,
    required this.txt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 55.w,
          height: 55.h,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.bgGray),
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            'assets/images/d1.png',
            fit: BoxFit.cover,
          ),
        ),
        Text(
          textAlign: TextAlign.center,
          txt,
          style: Theme.of(context).textTheme.displaySmall?.copyWith(
                color: AppColors.textPrimary,
                fontWeight: FontWeight.w400,
                fontSize: 10.sp,
              ),
        ),
      ],
    );
  }
}
