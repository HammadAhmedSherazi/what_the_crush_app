import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SheetIndicator extends StatefulWidget {
  const SheetIndicator({super.key});

  @override
  SheetIndicatorState createState() => SheetIndicatorState();
}

class SheetIndicatorState extends State<SheetIndicator>
    with TickerProviderStateMixin {
  bool _isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _isTapped = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          _isTapped = false;
        });
      },
      onTapCancel: () {
        setState(() {
          _isTapped = false;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        // transform: Matrix4.translationValues(
        //   0,
        //   _isTapped ? 5 : 0,
        //   0,
        // ),
        // add scale and move the container
        transform: Matrix4.translationValues(0, _isTapped ? 5 : 0, 0),
        margin: const EdgeInsets.symmetric(vertical: 1),

        child: Container(
          width: 1.sw,
          // height: 20,
          color: Colors.transparent,
          child: Center(
            child: Container(
              height: 5,
              width: 0.4.sw,
              decoration: BoxDecoration(
                color: _isTapped ? Colors.grey.withOpacity(0.7) : Colors.grey,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
