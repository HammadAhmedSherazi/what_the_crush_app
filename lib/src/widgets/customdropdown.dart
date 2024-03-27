import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class CustomDropdown extends StatefulWidget {
  const CustomDropdown({
    required this.items,
    required this.value,
    required this.onChanged,
    super.key,
    this.isDense,
    this.underline,
    this.dropDownItemTextStyle,
    this.dropdownStyleData,
    this.selectedItemStyle,
  });

  final List<dynamic> items;
  final dynamic value;
  final void Function(dynamic) onChanged;
  final bool? isDense;
  final Widget? underline;
  final TextStyle? dropDownItemTextStyle;
  final TextStyle? selectedItemStyle;
  final DropdownStyleData? dropdownStyleData;

  @override
  CustomDropdownState createState() => CustomDropdownState();
}

class CustomDropdownState extends State<CustomDropdown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton2<dynamic>(
      isDense: widget.isDense ?? true,
      items: widget.items
          .map(
            (e) => DropdownMenuItem<dynamic>(
              value: e,
              child: Text(
                '$e',
                textScaleFactor: 1,
                style: widget.dropDownItemTextStyle ??
                    Theme.of(context).textTheme.displaySmall?.copyWith(
                          color: AppColors.black,
                          fontWeight: FontWeight.w400,
                        ),
              ),
            ),
          )
          .toList(),
      underline: widget.underline ?? Container(),
      value: widget.value,
      style: widget.dropDownItemTextStyle ??
          Theme.of(context).textTheme.displaySmall?.copyWith(
                color: AppColors.purpleP500,
              ),
      iconStyleData: const IconStyleData(iconSize: 0),
      dropdownStyleData: widget.dropdownStyleData ??
          DropdownStyleData(
            elevation: 0,
            maxHeight: 0.3.sh,
            scrollbarTheme: ScrollbarThemeData(
              thumbColor: MaterialStateProperty.all(
                AppColors.purpleP500,
              ),
              mainAxisMargin: 10,
              trackColor: MaterialStateColor.resolveWith(
                (states) => Colors.grey.withOpacity(0.2),
              ),
            ),
          ),
      onChanged: widget.onChanged,
      selectedItemBuilder: (context) => widget.items
          .map<Widget>(
            (entry) => Text(
              entry.toString(),
              textScaleFactor: 1,
              style: widget.selectedItemStyle ??
                  Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: AppColors.purpleP500,
                        fontWeight: FontWeight.w400,
                      ),
            ),
          )
          .toList(),
    );
  }
}
