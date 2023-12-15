import 'dart:async';

import 'package:adopet_app/core/app_export.dart';
import 'package:adopet_app/src/constants/routes.dart';
import 'package:adopet_app/src/widgets/index.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushNamedAndRemoveUntil(
        context,
        Routes.login,
        (route) => false,
      ),
    );
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.deepOrange50,
        body: SizedBox(
          width: double.maxFinite,
          child: SizedBox(
            height: mediaQueryData.size.height,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                /* CustomImageView(
                  imagePath: ImageConstant.imgShape41,
                  height: 230.v,
                  width: 272.h,
                  alignment: Alignment.bottomCenter,
                ),
                 */
                CustomImageView(
                  imagePath: ImageConstant.imgFundo21,
                  height: 590.v,
                  width: 360.h,
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: 80.v),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgShape31,
                  height: 228.v,
                  width: 181.h,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(bottom: 66.v),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    height: 140.v,
                    width: 250.h,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgShape11,
                          height: 140.v,
                          width: 250.h,
                          alignment: Alignment.center,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup1,
                          height: 100.adaptSize,
                          width: 100.adaptSize,
                          alignment: Alignment.bottomRight,
                          margin: EdgeInsets.only(
                            right: 30.h,
                            bottom: 29.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 299.h,
                    margin: EdgeInsets.only(bottom: 25.v),
                    child: Text(
                      "Encuentra a tu amigo ideal",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.displayLarge,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
