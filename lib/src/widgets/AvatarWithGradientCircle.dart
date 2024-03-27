import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AvatarWithGradientCircle extends StatelessWidget {
  const AvatarWithGradientCircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 66.w,
      height: 60.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [
            Color(0xFF833ab4),
            Color(0xFFfd1d1d),
            Color(0xFFfcb045),
          ],
        ),
      ),
      child: Center(
        child: Container(
          width: 55.w,
          height: 55.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors
                .white, // Adjust this color as needed
          ),
          child: Center(
            child: CircleAvatar(
              backgroundImage: AssetImage(
                  'assets/images/d1.png'),
              radius: 25.w,
            ),
          ),
        ),
      ),
    );
  }
}
