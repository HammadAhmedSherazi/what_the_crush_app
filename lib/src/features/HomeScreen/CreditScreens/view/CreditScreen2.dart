import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/CreditScreens/Pages/CreditScreen2_body.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/CreditScreens/widgets/CreditScreen_Header.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class CreditScreen2 extends StatefulWidget {
  const CreditScreen2({super.key});

  @override
  State<CreditScreen2> createState() => _CreditScreen2State();
}

class _CreditScreen2State extends State<CreditScreen2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
                backgroundColor: AppColors.bg.withOpacity(0.6),
                elevation: 8,
                automaticallyImplyLeading: false,
                toolbarHeight: 120.h,
                flexibleSpace: CreditScreen_Header()),
            body: Column(
              children: [
                CreditScreen2_body(),
              ],
            )));
  }
}

