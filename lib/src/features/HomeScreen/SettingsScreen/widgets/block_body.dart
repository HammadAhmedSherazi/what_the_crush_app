import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/primarybutton.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/widgets/ListTile_Container.dart';

class Block_Body extends StatefulWidget {
  const Block_Body({super.key});

  @override
  State<Block_Body> createState() => _Block_BodyState();
}

class _Block_BodyState extends State<Block_Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              width: 334.w,
              height: 48.h,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: AppColors.border),
                  borderRadius: BorderRadius.circular(15)),
              child: TextField(
                // controller: searchController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search',
                    hintStyle: Theme.of(context).textTheme.bodyMedium,
                    prefixIcon: Icon(
                      CupertinoIcons.search,
                      size: 20,
                      color: AppColors.bgGray,
                    )),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile_Container(
                        txt: 'Emelie',
                        txt2: 'abigail@outlook.com',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              indent: 70,
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTileSimpleAvatar(
                        txt: 'Abigail  ',
                        txt2: 'abigail@outlook.com',
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.favorite_outline,
                  size: 17.sp,
                  color: AppColors.bgGray,
                ),
              ],
            ),
            Divider(
              indent: 70,
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile_Container(
                        txt: 'Abigail  ',
                        txt2: 'abigail@outlook.com',
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_outward,
                  size: 17.sp,
                  color: AppColors.bgGray,
                ),
              ],
            ),
            Divider(
              indent: 70,
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTileSimpleAvatar(
                        txt: 'Abigail  ',
                        txt2: 'abigail@outlook.com',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              indent: 70,
              height: 15,
            ),
            SizedBox(
              height: 0.1.sh,
            ),
            Divider(
              indent: 1,
              height: 20.h,
            ),
            PrimaryButton(
                text: 'block selected',
                onPressed: () {
                  Navigator.of(context).pop();
                }),
            20.verticalSpace,
          ],
        ),
      ),
    );
  }
}
