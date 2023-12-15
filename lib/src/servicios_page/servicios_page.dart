import 'package:adopet_app/src/widgets/index.dart';
import 'package:adopet_app/theme/custom_button_style.dart';

import '../servicios_page/widgets/servicios_item_widget.dart';
import 'package:adopet_app/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
class ServiciosPage extends StatelessWidget {
  ServiciosPage({Key? key})
      : super(
          key: key,
        );

  TextEditingController buscaController = TextEditingController();

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: 756.v,
          width: double.maxFinite,
          decoration: AppDecoration.outlineBlack,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage4,
                height: 800.v,
                width: 360.h,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 738.v,
                      width: 355.h,
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(
                              height: 698.v,
                              width: 345.h,
                              child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  _buildServicios(context),
                                  _buildRegistrar(context),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgShape11109x136,
                            height: 109.v,
                            width: 136.h,
                            alignment: Alignment.topLeft,
                          ),
                        ],
                      ),
                    ),
                    _buildAppBar(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildServicios(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 6.h,
          top: 260.v,
        ),
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 224.v,
            );
          },
          itemCount: 4,
          itemBuilder: (context, index) {
            return ServiciosItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRegistrar(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(right: 2.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 9.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgNotification,
                      height: 23.adaptSize,
                      width: 23.adaptSize,
                      margin: EdgeInsets.only(
                        top: 4.v,
                        bottom: 3.v,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgPerfil,
                      height: 30.adaptSize,
                      width: 30.adaptSize,
                      radius: BorderRadius.circular(
                        15.h,
                      ),
                      margin: EdgeInsets.only(left: 13.h),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12.v),
            Container(
              decoration: AppDecoration.gradientBlueToBlue.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder25,
              ),
              child: Container(
                height: 139.v,
                width: 343.h,
                padding: EdgeInsets.symmetric(horizontal: 17.h),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: fs.Svg(
                      ImageConstant.imgGroup59,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgC2,
                      height: 123.v,
                      width: 109.h,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(right: 16.h),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 190.h,
                        margin: EdgeInsets.only(
                          left: 3.h,
                          top: 18.v,
                        ),
                        child: Text(
                          "¿Tienes un animal que necesita un hogar?Registralo aquí",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles
                              .titleMediumRobotoPrimaryContainer,
                        ),
                      ),
                    ),
                    CustomElevatedButton(
                      height: 29.v,
                      width: 78.h,
                      text: "Registrar",
                      margin: EdgeInsets.only(bottom: 16.v),
                      buttonStyle: CustomButtonStyles.none,
                      decoration:
                          CustomButtonStyles.gradientAmberToYellowTL8Decoration,
                      alignment: Alignment.bottomLeft,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 17.v),
            Padding(
              padding: EdgeInsets.only(
                left: 4.h,
                right: 3.h,
              ),
              child: CustomTextFormField(
                controller: buscaController,
                hintText: "Buscar servicio",
                hintStyle: CustomTextStyles.bodySmallGray60002,
                textInputAction: TextInputAction.done,
                prefix: Container(
                  margin: EdgeInsets.fromLTRB(12.h, 7.v, 8.h, 7.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgSearchBlue30002,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: 30.v,
                ),
                contentPadding: EdgeInsets.only(
                  top: 7.v,
                  right: 30.h,
                  bottom: 7.v,
                ),
                borderDecoration: TextFormFieldStyleHelper.fillGray,
                fillColor: appTheme.gray100,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 17.v,
      leadingWidth: 24.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgLocation,
        margin: EdgeInsets.only(
          left: 10.h,
          top: 1.v,
          bottom: 1.v,
        ),
      ),
      title: AppbarTitleDropdown(
        margin: EdgeInsets.only(left: 7.h),
        hintText: "Santa Cruz, BO",
        items: dropdownItemList,
        onTap: (value) {},
      ),
    );
  }
}
