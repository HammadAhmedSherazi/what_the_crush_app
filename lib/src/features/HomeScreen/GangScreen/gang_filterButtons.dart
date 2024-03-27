import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class GangFilter_Buttons extends StatelessWidget {
  final bool isSelected;
  final IconData? iconData;
  final String text;
  final bool isEqualWidth;
  final void Function()? onPressed;

  const GangFilter_Buttons({
    required this.isSelected,
    this.iconData,
    required this.text,
    this.isEqualWidth = true,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        fixedSize: isEqualWidth ? Size.fromWidth(0.31.sw) : null,
        backgroundColor: isSelected ? AppColors.purpleP500 : Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(
            color: AppColors.border,
            width: 2,
          ),
        ),
      ),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        runAlignment: WrapAlignment.center,
        alignment: WrapAlignment.center,
        children: [
          if (iconData != null) ...[
            Icon(
              iconData,
              color: isSelected ? Colors.white : AppColors.textInactive,
              size: 11,
            ),
            SizedBox(width: 10.w),
          ],
          Text(
            text,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w500,
                  color: isSelected ? Colors.white : AppColors.purpleP500,
                  height: 1.sp,
                ),
          ),
        ],
      ),
    );
  }
}


// class FriendsFilterButton extends StatelessWidget {
//   final void Function()? onPressed;
//   final IconData? iconData;
//   final String text;
//   final bool isEqualWidth;

//   const FriendsFilterButton({
//     Key? key,
//     this.onPressed,
//     this.iconData,
//     required this.text,
//     this.isEqualWidth = true,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () {
//         onPressed?.call();
//       },
//       style: ElevatedButton.styleFrom(
//         elevation: 0,
//         padding: const EdgeInsets.symmetric(
//           horizontal: 10,
//           vertical: 10,
//         ),
//         fixedSize: isEqualWidth ? Size.fromWidth(0.31.sw) : null,
//         backgroundColor: AppColors.bg.withOpacity(0.6),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10),
//           side: const BorderSide(
//             color: AppColors.border,
//             width: 2,
//           ),
//         ),
//       ),
//       child: Wrap(
//         crossAxisAlignment: WrapCrossAlignment.center,
//         runAlignment: WrapAlignment.center,
//         alignment: WrapAlignment.center,
//         children: [
//           if (iconData != null)
//             Icon(
//               iconData,
//               color: AppColors.purpleP500,
//               size: 11,
//             ),
//           if (iconData != null) 10.horizontalSpace,
//           Text(
//             text,
//             style: TextStyle(
//               color: AppColors.purpleP500,
//               fontSize: 10.sp,
//               fontWeight: FontWeight.w500,
//               height: 1,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
