import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/widgets/WallAppHeader.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/widgets/bottomNavBar.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            WallAppHeader(),
            SizedBox(height: 20), // Replaced 20.verticalSpace with SizedBox
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(), // Ensure bottomNavigationBar is here
    );
  }
}
