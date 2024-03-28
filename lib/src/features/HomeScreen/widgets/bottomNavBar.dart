import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'package:what_the_crush_app/src/features/HomeScreen/CrushMakingScreen/view/CrushMakingScreen.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/CrushScreen/view/CrushScreenHeader.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/GangScreen/view/gangScreen.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/WallScreens/mainWallScreen/view/mainWallScreen.dart';
import 'package:what_the_crush_app/src/features/Providers/navbar_provider.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/utils/global.dart';



class BottomNavBar extends ConsumerWidget {
  

  // final pages = [
  //   MainWallScreen(),
  //   CrushScreen(),
  //   GangScreen(),
  //   CrushMakingScreen(),
  // ];
  // late BottomProviderController _bottomProviderController;

  // @override
  // void initState() {
  //   super.initState();
  //   _bottomProviderController = BottomProviderController(0);
  // }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bottomIndex = ref.watch(bottomIndexProvider);
    return Container(
          color: Colors.transparent,
          width: double.infinity,
          child: Scaffold(
            backgroundColor: AppColors.white,
            body: NavigationListDataModel.list[bottomIndex].child,
            bottomNavigationBar: buildnavbar(ref, bottomIndex),
          ));
    
  }

  buildnavbar(WidgetRef ref, int selectIndex) {
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
        children: List.generate(NavigationListDataModel.list.length, (index) => GestureDetector(
      onTap: () {
        ref.read(bottomIndexProvider.notifier).navBarChange(index);
        // onpress();
      },
      child: Container(
        child: Image.asset(
          NavigationListDataModel.list[index].image,
          scale: 1,
          color: selectIndex == index
              ? AppColors.purpleP500
              : AppColors.textInactive,
        ),
      ),
    )),
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

// class navbarIcons extends StatelessWidget {
//   final int bottomcontroller;
//   final String img;
//   VoidCallback onpress;
//   final int index; // New index property to specify the associated index
//   navbarIcons({
//     Key? key,
//     required this.onpress,
//     required this.img,
//     required this.index,
//     required this.bottomcontroller,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         bottomcontroller.navBarChange(index);
//         onpress();
//       },
//       child: Container(
//         child: Image.asset(
//           img,
//           scale: 1,
//           color: bottomcontroller.navigationBarIndexValue == index
//               ? AppColors.purpleP500
//               : AppColors.textInactive,
//         ),
//       ),
//     );
//   }
// }

class NavigationListDataModel{
  final String image;
  final Widget child;

  const NavigationListDataModel({required this.image, required this.child});

  static  List<NavigationListDataModel> list = [
    NavigationListDataModel(
      image: "${AppConstant.imagePath}/wall_default.png",
      child: MainWallScreen(),
    ),
    NavigationListDataModel(
      image: "${AppConstant.imagePath}/crush_default.png",
      child: CrushScreen(),
    ),
    NavigationListDataModel(
      image: "${AppConstant.imagePath}/gang_default.png",
      child: GangScreen(),
    ),
    NavigationListDataModel(
      image: "${AppConstant.imagePath}/crush_making_default.png",
      child: CrushMakingScreen(),
    ),
  ];
}