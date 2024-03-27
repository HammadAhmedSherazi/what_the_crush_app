import 'package:flutter/material.dart';

import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class SelectableCard<T> extends StatelessWidget {
  const SelectableCard({
    required this.value,
    required this.selectedValue,
    required this.onChanged,
    super.key,
    this.title,
    this.showIcon = true,
  });
  final T value;
  final dynamic selectedValue;
  final Widget? title;
  final ValueChanged<T?> onChanged;
  final bool showIcon;

  @override
  Widget build(BuildContext context) {
    late bool isSelected;
    if (selectedValue is T) {
      isSelected = selectedValue == value;
    } else if (selectedValue is List<T>) {
      isSelected = (selectedValue as List<T>).contains(value);
    } else {
      isSelected = false;
    }
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: InkWell(
        onTap: () => onChanged(value),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: isSelected
                ? AppColors.purpleP500.withOpacity(0.1)
                : Colors.white,
            border: Border.all(
              color: isSelected ? Colors.transparent : AppColors.border,
            ),
          ),
          child: title != null && !showIcon
              ? title
              : Row(
                  children: [
                    if (title != null) title!,
                    if (isSelected) const Spacer(),
                    if (isSelected && showIcon)
                      const Icon(
                        Icons.check,
                        color: AppColors.purpleP500,
                        size: 18,
                      ),
                  ],
                ),
        ),
      ),
    );
  }
}
