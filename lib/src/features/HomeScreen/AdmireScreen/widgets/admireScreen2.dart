import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: unused_import
import 'package:what_the_crush_app/src/features/HomeScreen/AdmireScreen/widgets/admireListTile.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/Secondarybutton.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class AdmireScreen2 extends StatefulWidget {
  const AdmireScreen2({super.key});

  @override
  State<AdmireScreen2> createState() => _AdmireScreen2State();
}

class _AdmireScreen2State extends State<AdmireScreen2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            resizeToAvoidBottomInset: false,
            body: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      20.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              // padding: const EdgeInsets.only(left: 20),
                              decoration: BoxDecoration(
                                // color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                    color: AppColors.bgGray.withOpacity(0.1),
                                    width: 1),
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
                        ],
                      ),
                      Text(
                        'stealth mode on!',
                        style:
                            Theme.of(context).textTheme.displayLarge?.copyWith(
                                  color: AppColors.red,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 34.sp,
                                ),
                      ),
                      Text(
                        'you’re discreetly\nfollowing',
                        style:
                            Theme.of(context).textTheme.displayLarge?.copyWith(
                                  color: AppColors.textPrimary,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 34.sp,
                                ),
                      ),
                      20.verticalSpace,
                      CustomListTile(
                        txt1: 'Emelie',
                        txt2: 'sent as sms',
                      ),
                      Divider(
                        indent: 70,
                        height: 15,
                      ),
                      CustomListTile(
                        txt1: 'Abigail ',
                        txt2: 'sent as sms and email',
                      ),
                      Divider(
                        indent: 70,
                        height: 15,
                      ),
                      CustomListTile(
                        txt1: 'Stephannie ',
                        txt2: 'sent as app notification',
                      ),
                      Divider(
                        indent: 70,
                        height: 15,
                      ),
                      CustomListTile(
                        txt1: 'Penelope ',
                        txt2: 'sent as app notification',
                      ),
                      Divider(
                        indent: 70,
                        height: 15,
                      ),
                      CustomListTile(
                        txt1: 'Chloe',
                        txt2: 'sent as an email',
                      ),
                      Divider(
                        indent: 70,
                        height: 15,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 20.h),
                        child: SecondaryButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 60.w),
                              child: Text(
                                'what happens next?',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                        color: AppColors.red,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16.sp),
                              ),
                            )),
                      ),
                    ])))));
  }
}

class CustomListTile extends StatelessWidget {
  final String txt1;
  final String txt2;
  const CustomListTile({
    Key? key,
    required this.txt1,
    required this.txt2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 7.w),
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/images/d1.png'),
        radius: 27.w,
      ),
      title: Text(
        txt1,
        style: Theme.of(context)
            .textTheme
            .displaySmall
            ?.copyWith(fontWeight: FontWeight.w500, fontSize: 14.sp),
      ),
      subtitle: Text(
        txt2,
        style: Theme.of(context).textTheme.displaySmall?.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 10.sp,
            color: AppColors.bgGray),
      ),
      trailing: SecondaryButton(
          onPressed: () {},
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Text(
              'undo',
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 13.sp,
                  color: AppColors.red),
            ),
          )),
    );
  }
}
