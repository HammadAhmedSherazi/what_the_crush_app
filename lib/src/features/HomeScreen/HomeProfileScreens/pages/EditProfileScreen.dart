import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/HomeProfileScreens/pages/identitybottomsheet.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/HomeProfileScreens/pages/interested_in_sheet.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/HomeProfileScreens/pages/interestsbottomsheet.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/HomeProfileScreens/pages/raceBottomSheet.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/HomeProfileScreens/pages/relationshipbottomsheet.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/HomeProfileScreens/widgets/EditScreenTextfields.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/HomeProfileScreens/widgets/ProfileHeaderButtons.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EditProfileHeaderButtons(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MainText('phone, email and social'),
                    10.verticalSpace,
                    FieldWithIcon(
                        onPressed: () {},
                        icon: Icons.flag_circle_rounded,
                        txt1: 'Primary\nPhone',
                        txt2: '(+1) 331 623 8413'),
                    FieldWithIcon(
                        onPressed: () {},
                        icon: Icons.flag_circle_rounded,
                        txt1: 'Phone2',
                        txt2: '(+1) 331 623 8413'),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "add a phone",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                color: AppColors.purpleP500,
                                fontWeight: FontWeight.w600,
                                fontSize: 14.sp,
                              ),
                        ),
                      ],
                    ),
                    EditProfileEmailField(
                      txt1: 'primary\nemail',
                      txt2: 'toni.augilera@outlook.com',
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "add an Email",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                color: AppColors.purpleP500,
                                fontWeight: FontWeight.w600,
                                fontSize: 14.sp,
                              ),
                        ),
                      ],
                    ),
                    ProfileEditField(
                      txt2: 'toni.augilera@outlook.com',
                      img: 'assets/images/iconfb.png',
                    ),
                    ProfileEditField(
                      txt2: 'toni.augilera@outlook.com',
                      img: 'assets/images/linkdein.png',
                    ),
                    10.verticalSpace,
                    MainText('basic profiles'),
                    5.verticalSpace,
                    EditProfileEmailField(
                      txt1: 'first\nname',
                      txt2: 'Annabelle',
                    ),
                    EditProfileEmailField(
                      txt1: 'last\nname',
                      txt2: 'Parker',
                    ),
                    EditProfileEmailField(
                      txt1: 'birth\ndate',
                      txt2: '01 / 02 / 2000',
                    ),
                    FieldWithIcon(
                        onPressed: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (BuildContext context) {
                              return identity_BottomSheet();
                            },
                          );
                        },
                        icon: Icons.keyboard_arrow_down_outlined,
                        txt1: 'gender',
                        txt2: 'agender'),
                    EditProfileEmailField(
                      txt1: 'country',
                      txt2: 'united states of america',
                    ),
                    FieldWithIcon(
                        onPressed: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (BuildContext context) {
                              return relationship_BottomSheet();
                            },
                          );
                        },
                        icon: Icons.keyboard_arrow_down_outlined,
                        txt1: 'relation\nstatus',
                        txt2: 'complicated relationship'),
                    FieldWithIcon(
                        onPressed: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (BuildContext context) {
                              return race_BottomSheet();
                            },
                          );
                        },
                        icon: Icons.keyboard_arrow_down_outlined,
                        txt1: 'race',
                        txt2: 'hispanic or latinx'),
                    FieldWithIcon(
                        onPressed: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (BuildContext context) {
                              return Interested_BottomSheet2();
                            },
                          );
                        },
                        icon: Icons.keyboard_arrow_down_outlined,
                        txt1: 'seeking',
                        txt2: 'female'),
                    10.verticalSpace,
                    MainText('personality'),
                    5.verticalSpace,
                    HintTextIcon(
                      onPressed: () {},
                      txt: 'neuroticism',
                      icon: Icons.edit_outlined,
                    ),
                    5.verticalSpace,
                    MainText('about'),
                    5.verticalSpace,
                    AboutField(),
                    5.verticalSpace,
                    MainText('interests'),
                    5.verticalSpace,
                    HintTextIcon(
                      onPressed: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (BuildContext context) {
                            return InterestedBottomSheet();
                          },
                        );
                      },
                      txt: 'multiple selections',
                      icon: Icons.keyboard_arrow_down_outlined,
                    ),
                    10.verticalSpace,
                    Row(
                      children: [
                        Text(
                          'wall posters (74)',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                color: AppColors.red,
                                fontWeight: FontWeight.w600,
                                fontSize: 14.sp,
                              ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 15.w),
                          height: 1.h,
                          width: 157.w,
                          color: AppColors.textInactive,
                        ),
                        Text(
                          'see all ',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                color: AppColors.purpleP500,
                                fontWeight: FontWeight.w600,
                                fontSize: 14.sp,
                              ),
                        ),
                      ],
                    ),
                    10.verticalSpace,
                    Row(
                      children: [
                        ProfileImages('assets/images/wallimage1.jpeg'),
                        ProfileImages('assets/images/wallimage2.jpeg'),
                      ],
                    ),
                    5.verticalSpace,
                    Row(
                      children: [
                        ProfileImages2('assets/images/wallimage3.jpeg'),
                        ProfileImages2('assets/images/wallimage4.jpeg'),
                        ProfileImages2('assets/images/wallimage1.jpeg'),
                      ],
                    ),
                    10.verticalSpace,

                    // PhoneNumberField(
                    //     labeltxt: 'Mobile Number', hinttxt: '331 623 8413'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container ProfileImages(String img) {
    return Container(
      margin: EdgeInsetsDirectional.symmetric(horizontal: 2.w),
      width: 155.w,
      height: 190.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            img,
            fit: BoxFit.cover,
          )),
    );
  }
}

Container ProfileImages2(String img) {
  return Container(
    margin: EdgeInsetsDirectional.symmetric(horizontal: 2.w),
    width: 100.w,
    height: 120.h,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
    ),
    child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          img,
          fit: BoxFit.cover,
        )),
  );
}

class MainText extends StatelessWidget {
  final String txt;

  MainText(this.txt);

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: Theme.of(context).textTheme.displaySmall?.copyWith(
            color: AppColors.red,
            fontWeight: FontWeight.w600,
            fontSize: 15.sp,
          ),
    );
  }
}
