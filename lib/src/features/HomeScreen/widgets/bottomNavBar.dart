import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'package:what_the_crush_app/src/features/HomeScreen/CrushMakingScreen/view/CrushMakingScreen.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/CrushScreen/view/CrushScreenHeader.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/GangScreen/view/gangScreen.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/WallScreens/mainWallScreen/view/mainWallScreen.dart';
import 'package:what_the_crush_app/src/features/Providers/navbar_provider.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int pageIndex = 0;

  final pages = [
    MainWallScreen(),
    CrushScreen(),
    GangScreen(),
    CrushMakingScreen(),
  ];
  // late BottomProviderController _bottomProviderController;

  // @override
  // void initState() {
  //   super.initState();
  //   _bottomProviderController = BottomProviderController(0);
  // }

  @override
  Widget build(BuildContext context) {
    final bottomProvider = Provider.of<BottomProviderController>(context);
    return Consumer<BottomProviderController>(
        builder: (context, bottomProvider, child) {
      return Container(
          color: Colors.transparent,
          width: double.infinity,
          child: Scaffold(
            backgroundColor: AppColors.white,
            body: pages[bottomProvider.navigationBarIndexValue],
            bottomNavigationBar: buildnavbar(context, bottomProvider),
          ));
    });
  }

  buildnavbar(BuildContext context, BottomProviderController bottomProvider) {
    return Container(
      height: 60.h,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.border, width: 2),
        // borderRadius: BorderRadius.only(
        //     bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
        color: AppColors.bg,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: navbarIcons(
                onpress: () {
                  setState(() {
                    bottomProvider.navBarChange(0);
                  });
                },
                img: 'assets/images/wall_default.png',
                index: 0,
                bottomcontroller: bottomProvider),
          ),
          Expanded(
            child: navbarIcons(
                onpress: () {
                  setState(() {
                    bottomProvider.navBarChange(1);
                  });
                },
                img: 'assets/images/crush_default.png',
                index: 1,
                bottomcontroller: bottomProvider),
          ),
          Expanded(
            child: navbarIcons(
                onpress: () {
                  setState(() {
                    bottomProvider.navBarChange(2);
                  });
                },
                img: 'assets/images/gang_default.png',
                index: 2,
                bottomcontroller: bottomProvider),
          ),
          Expanded(
            child: navbarIcons(
                onpress: () {
                  setState(() {
                    bottomProvider.navBarChange(3);
                  });
                },
                img: 'assets/images/crush_making_default.png',
                index: 3,
                bottomcontroller: bottomProvider),
          )
        ],
      ),

      // currentIndex: _bottomProviderController.navigationBarIndexValue,
      // items: [
      //   BottomNavigationBarItem(
      //     icon: Image.asset(
      //       'assets/images/wall_default.png',
      //     ),
      //     activeIcon: Image.asset(
      //       'assets/images/wall_active.png',
      //     ),
      //     label: 'wall',
      //   ),
      //   BottomNavigationBarItem(
      //     icon: Image.asset(
      //       'assets/images/crush_default.png',
      //     ),
      //     activeIcon: Image.asset(
      //       'assets/images/crush_active.png',
      //     ),
      //     label: 'crush',
      //   ),
      //   BottomNavigationBarItem(
      //     icon: Image.asset(
      //       'assets/images/gang_default.png',
      //     ),
      //     activeIcon: Image.asset(
      //       'assets/images/gang_active.png',
      //     ),
      //     label: 'profile',
      //   ),
      //   BottomNavigationBarItem(
      //     icon: Image.asset(
      //       'assets/images/crush_making_default.png',
      //     ),
      //     activeIcon: Image.asset(
      //       'assets/images/crush_making_active.png',
      //     ),
      //     label: 'crush making',
      //   ),
      // ],
    );
  }
}

class navbarIcons extends StatelessWidget {
  final BottomProviderController bottomcontroller;
  final String img;
  VoidCallback onpress;
  final int index; // New index property to specify the associated index
  navbarIcons({
    Key? key,
    required this.onpress,
    required this.img,
    required this.index,
    required this.bottomcontroller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        bottomcontroller.navBarChange(index);
        onpress();
      },
      child: Container(
        child: Image.asset(
          img,
          scale: 1,
          color: bottomcontroller.navigationBarIndexValue == index
              ? AppColors.purpleP500
              : AppColors.textInactive,
        ),
      ),
    );
  }
}
