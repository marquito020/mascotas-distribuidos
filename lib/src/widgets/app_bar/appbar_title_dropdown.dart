import 'package:adopet_app/core/app_export.dart';
import 'package:adopet_app/src/widgets/custom_drop_down.dart';
import 'package:adopet_app/src/widgets/index.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarTitleDropdown extends StatelessWidget {
  AppbarTitleDropdown({
    Key? key,
    required this.hintText,
    required this.items,
    required this.onTap,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  List<String> items;

  Function(String) onTap;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomDropDown(
        width: 106.h,
        icon: Container(
          margin: EdgeInsets.only(left: 4.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgArrowdown,
            height: 6.v,
            width: 13.h,
          ),
        ),
        hintText: "Santa Cruz, BO",
        items: items,
        onChanged: (value) {
          onTap(value);
        },
      ),
    );
  }
}
