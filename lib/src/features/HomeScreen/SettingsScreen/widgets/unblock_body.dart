import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/primarybutton.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/widgets/ListTile_Container.dart';

class unBlock_Body extends StatefulWidget {
  const unBlock_Body({super.key});

  @override
  State<unBlock_Body> createState() => _unBlock_BodyState();
}

class _unBlock_BodyState extends State<unBlock_Body> {
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
                      ListTileSimpleAvatar(
                        txt: 'Cholie ',
                        txt2: 'abigail@outlook.com',
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.close,
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
                        txt: 'Rose ',
                        txt2: 'abigail@outlook.com',
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.close,
                  size: 17.sp,
                  color: AppColors.bgGray,
                ),
              ],
            ),
            Divider(
              indent: 70,
              height: 15,
            ),
            SizedBox(
              height: 0.2.sh,
            ),
            Divider(
              indent: 1,
              height: 20.h,
            ),
            PrimaryButton(
                text: 'unblock selected',
                onPressed: () {
                  Navigator.of(context).pop();
                })
          ],
        ),
      ),
    );
  }
}
