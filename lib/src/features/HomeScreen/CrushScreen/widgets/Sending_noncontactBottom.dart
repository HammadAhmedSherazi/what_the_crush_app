import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/CrushScreen/widgets/editname_bottomsheet.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/Secondarybutton.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/helpers/Input_Textfield/Input_Textfield.dart';
import 'package:what_the_crush_app/src/widgets/SheetIndicator.dart';

class Sending_nonContact extends StatefulWidget {
  const Sending_nonContact({super.key});

  @override
  State<Sending_nonContact> createState() => _Sending_nonContactState();
}

class _Sending_nonContactState extends State<Sending_nonContact> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController mobileNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.85, // Set the initial size of the sheet
      minChildSize: 0.70, // Set the minimum size of the sheet
      maxChildSize: 1.0, // Set the maximum size of the sheet
      expand: false, // Set to true for full screen
      builder: (BuildContext context, ScrollController scrollController) {
        return Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(0.15.sw)),
                  color: AppColors.bg,
                ),
                child: Column(children: [
                  // Draggablehandle bar
                  SheetIndicator(),
                  Expanded(
                      child: SingleChildScrollView(
                    controller: scrollController,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          20.verticalSpace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SheetHeading(txt: 'sending to a non-contact')
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'instead, send to a contact',
                                style: TextStyle(
                                  color: AppColors.blue,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                ),
                                overflow: TextOverflow.clip,
                                maxLines: 1,
                              ),
                            ],
                          ),
                          40.verticalSpace,
                          InputTextField(
                              label: 'first name',
                              hint: 'type your crush’s first name',
                              fillColor: Colors.white,
                              controller: firstNameController),
                          20.verticalSpace,
                          InputTextField(
                              label: 'last name',
                              hint: 'crush’s last name',
                              fillColor: Colors.white,
                              controller: lastNameController),
                          20.verticalSpace,
                          InputTextField(
                              label: 'email',
                              fillColor: Colors.white,
                              hint: 'crush’s email address',
                              controller: emailController),
                          20.verticalSpace,
                          InputTextField(
                              label: 'mobile',
                              fillColor: Colors.white,
                              hint: 'crush’s mobile number',
                              controller: mobileNumberController),
                          60.verticalSpace,
                          Divider(
                            indent: 20,
                            height: 15,
                          ),
                          20.verticalSpace,
                          SecondaryButton(
                              onPressed: () {
                                // Navigator.of(context)
                                //     .popUntil((route) => route.isFirst);
                                showModalBottomSheet(
                                  barrierColor: Colors.transparent,
                                  isScrollControlled: true,
                                  context: context,
                                  builder: (BuildContext context) {
                                    return edit_nameBottomSheet();
                                  },
                                );
                              },
                              // Navigator.of(context).pop();

                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 36.w),
                                child: Text(
                                  '   send discreet crush message',
                                  style: TextStyle(
                                      color: AppColors.red,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                              )),
                          10.verticalSpace,
                        ],
                      ),
                    ),
                  ))
                ])));
      },
    );
  }
}
