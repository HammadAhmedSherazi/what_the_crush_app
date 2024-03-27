import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/CrushMakingScreen/view/CrushMakingBody.dart';

import 'package:what_the_crush_app/src/features/HomeScreen/widgets/AppHeader.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class CrushMakingScreen extends StatefulWidget {
  const CrushMakingScreen({super.key});

  @override
  State<CrushMakingScreen> createState() => _CrushMakingScreenState();
}

class _CrushMakingScreenState extends State<CrushMakingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: AppColors.bg.withOpacity(0.6),
              elevation: 8,
              automaticallyImplyLeading: false,
              toolbarHeight: 165.h,
              flexibleSpace: AppHeader(
                txt: "crush making",
              ),
            ),
            body: Column(
              children: [CrushMakingBody()],
            )));
  }
}
