import 'package:adopet_app/core/app_export.dart';
import 'package:adopet_app/src/models/index.dart';
import 'package:adopet_app/src/widgets/index.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FavoritosoneItemWidget extends StatelessWidget {
  const FavoritosoneItemWidget({
    Key? key,
    required this.adopcion,
  }) : super(key: key);
  final Adopcion adopcion;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: const EdgeInsets.all(0),
      color: appTheme.gray100,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Container(
        height: 150.v,
        width: 148.h,
        decoration: AppDecoration.outlineBlack900.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder18,
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CustomImageView(
              /* imagePath: ImageConstant.imgImage5, */
              imagePath: adopcion.image[0].toString(),
              height: 150.v,
              width: 148.h,
              radius: BorderRadius.circular(
                18.h,
              ),
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.all(11.h),
                decoration:
                    AppDecoration.gradientGrayToOnSecondaryContainer.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderBL18,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 11.v),
                    Row(
                      children: [
                        Text(
                          adopcion.nombre,
                          style: theme.textTheme.labelLarge,
                        ),
                        /* CustomImageView(
                          imagePath: ImageConstant.imgSettings,
                          height: 11.adaptSize,
                          width: 11.adaptSize,
                          margin: EdgeInsets.only(
                            left: 4.h,
                            top: 3.v,
                            bottom: 2.v,
                          ),
                        ), */
                      ],
                    ),
                    Row(
                      children: [
                        /* CustomImageView(
                          imagePath: ImageConstant.imgLocationBlue30001,
                          height: 8.v,
                          width: 7.h,
                          margin: EdgeInsets.only(bottom: 2.v),
                        ), */
                        /* Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text(
                            "Distância (5km)",
                            style: CustomTextStyles.robotoPrimaryContainer,
                          ),
                        ), */
                        /* Raza */
                        Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text(
                            "Raza: ${adopcion.raza}",
                            style: CustomTextStyles.robotoPrimaryContainer,
                          ),
                        ),
                      ],
                    ),
                    /* Especie */
                    Row(
                      children: [
                        /* CustomImageView(
                          imagePath: ImageConstant.imgLocationBlue30001,
                          height: 8.v,
                          width: 7.h,
                          margin: EdgeInsets.only(bottom: 2.v),
                        ), */
                        Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text(
                            "Especie: ${adopcion.especie}",
                            style: CustomTextStyles.robotoPrimaryContainer,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
