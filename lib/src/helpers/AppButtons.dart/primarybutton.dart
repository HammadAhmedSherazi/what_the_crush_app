import 'package:flutter/material.dart';

import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    required this.text,
    required this.onPressed,
    this.isEnabled = true,
    this.isLoading = false,
    this.textStyle,
    super.key,
    this.textStyleDisabled,
  });
  final String text;
  final TextStyle? textStyle;
  final TextStyle? textStyleDisabled;
  final VoidCallback onPressed;
  final bool isLoading;
  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    if (!isEnabled) {
      return ElevatedButton(
        onPressed: () {},

        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(
                color: AppColors.border,
              ),
            ),
          ),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (isLoading)
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  height: 20,
                  width: 20,
                  child: const CircularProgressIndicator(
                    color: AppColors.textInactive,
                  ),
                ),
              Flexible(
                child: Text(
                  text,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium
                      ?.copyWith(
                        color: AppColors.textInactive,
                        fontWeight: FontWeight.w700,
                      )
                      .merge(textStyleDisabled),
                ),
              ),
            ],
          ),
        ),
        // child: Container(
        //   padding: const EdgeInsets.symmetric(vertical: 20),
        //   child: Text(
        //     text,
        //     textAlign: TextAlign.center,
        //     style: Theme.of(context).textTheme.labelMedium?.copyWith(
        //           color: AppColors.textInactive,
        //           fontWeight: FontWeight.w700,
        //         ),
        //   ),
        // ),
      );
    }
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 1,
        backgroundColor: AppColors.mustard,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        padding: EdgeInsets.zero,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isLoading)
              Container(
                margin: const EdgeInsets.only(right: 20),
                height: 20,
                width: 20,
                child: const CircularProgressIndicator(
                  color: AppColors.purpleP500,
                ),
              ),
            Flexible(
              child: Text(
                text,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium
                    ?.copyWith(
                      color: AppColors.purpleP700,
                      fontWeight: FontWeight.w700,
                    )
                    .merge(textStyle),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
