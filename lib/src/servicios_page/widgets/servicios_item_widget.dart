import 'package:adopet_app/core/app_export.dart';
import 'package:adopet_app/src/widgets/index.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ServiciosItemWidget extends StatelessWidget {
  const ServiciosItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 94.v,
        width: 338.h,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 14.adaptSize,
                width: 14.adaptSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    4.h,
                  ),
                  gradient: LinearGradient(
                    begin: const Alignment(0.5, 0),
                    end: const Alignment(0.5, 1),
                    colors: [
                      appTheme.amber300,
                      appTheme.yellow700,
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(
                  right: 16.h,
                  bottom: 1.v,
                ),
                child: Text(
                  "Ver todos",
                  style: CustomTextStyles.bodySmallRobotoAmber300,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(
                  left: 1.h,
                  right: 9.h,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 12.h,
                  vertical: 3.v,
                ),
                decoration: AppDecoration.outlineBlack9004.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder25,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 8.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgResgati1,
                      height: 77.v,
                      width: 76.h,
                    ),
                  ],
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgShareOrangeA100,
              height: 91.v,
              width: 75.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 2.h),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 66.h),
                child: Text(
                  "Estilista Romi",
                  style: theme.textTheme.headlineSmall,
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 14.adaptSize,
              width: 14.adaptSize,
              alignment: Alignment.bottomRight,
            ),
          ],
        ),
      ),
    );
  }
}
