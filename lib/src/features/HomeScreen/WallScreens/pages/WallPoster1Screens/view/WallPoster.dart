import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/WallScreens/pages/WallPoster1Screens/DeleteWallPoster.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/WallScreens/pages/WallPoster1Screens/showPostText.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class WallPoster extends StatefulWidget {
  const WallPoster({super.key});

  @override
  State<WallPoster> createState() => _WallPosterState();
}

class _WallPosterState extends State<WallPoster> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.bg,
        body: Container(
          decoration: BoxDecoration(
            color:
                Colors.black.withOpacity(0.5), // Background color with opacity
            image: DecorationImage(
              image: AssetImage('assets/images/wallposter.png'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.8),
                BlendMode.dstATop,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(children: [
              20.verticalSpace,
              Row(
                children: [
                  Container(
                    height: 3.h,
                    width: 150.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                          topRight: Radius.circular(5)),
                      color: AppColors.white,
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 3,
                          width: 50,
                          color: AppColors.purpleP500,
                        )
                      ],
                    ),
                  ),
                  10.horizontalSpace,
                  Container(
                    height: 3.h,
                    width: 150.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                          topRight: Radius.circular(5)),
                      color: AppColors.white,
                    ),
                  )
                ],
              ),
              10.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/d1.png'),
                      ),
                      10.horizontalSpace,
                      Text("Annabelle",
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium
                              ?.copyWith(
                                  color: AppColors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.sp)),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      // padding: const EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                        // color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: AppColors.white, width: 1),
                      ),
                      width: 45,
                      height: 45,
                      child: const Icon(
                        Icons.close,
                        color: AppColors.white,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 350,
              ),
              Expanded(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(12),
                              border:
                                  Border.all(color: AppColors.white, width: 1),
                            ),
                            width: 45,
                            height: 45,
                            child: Icon(
                              Icons.arrow_right_alt,
                              color: AppColors.purpleP500,
                              size: 30.sp,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 4),
                        width: 335.w,
                        height: 48.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: AppColors.border),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText:
                                        'love yourself before loving others',
                                    hintStyle: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                            color: AppColors.black,
                                            fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              Image.asset(
                                  'assets/images/crush_making_default.png'),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text("37/100 characters",
                              textAlign: TextAlign.start,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      color: AppColors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.sp)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Delete_WallPoster()));
                            },
                            child: Container(
                              height: 40,
                              width: 60,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColors.purpleP500, width: 1),
                                borderRadius: BorderRadius.circular(15),
                                color: AppColors.white.withOpacity(0.5),
                              ),
                              child: Center(
                                  child: Icon(
                                CupertinoIcons.delete,
                                color: AppColors.purpleP500,
                              )),
                            ),
                          ),
                          10.horizontalSpace,
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => showPostText()));
                            },
                            child: Container(
                              height: 43,
                              width: 83,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: AppColors.mustard,
                              ),
                              child: Center(
                                child: Text('post',
                                    overflow: TextOverflow.ellipsis,
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium
                                        ?.copyWith(
                                            color: AppColors.purpleP500,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14.sp)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 13.h,
                      ),
                    ]),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
