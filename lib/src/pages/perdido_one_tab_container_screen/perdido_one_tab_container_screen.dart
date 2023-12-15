import 'package:adopet_app/core/app_export.dart';
/* import 'package:adopet_app/presentation/favoritos_one_page/favoritos_one_page.dart'; */
import 'package:adopet_app/src/pages/perdido_one_page/perdido_ave_page.dart';
import 'package:adopet_app/src/pages/perdido_one_page/perdido_gato_page.dart';
import 'package:adopet_app/src/pages/perdido_one_page/perdido_otro_page.dart';
import 'package:adopet_app/src/pages/perdido_one_page/perdido_perro_page.dart';
/* import 'package:adopet_app/src/presentation/servicios_page/servicios_page.dart'; */
/* import 'package:adopet_app/widgets/custom_icon_button.dart'; */
import 'package:adopet_app/src/widgets/index.dart';
import 'package:adopet_app/theme/custom_button_style.dart';
import 'package:flutter/material.dart';

class PerdidoPage extends StatefulWidget {
  const PerdidoPage({Key? key})
      : super(
          key: key,
        );

  @override
  PerdidoPageState createState() => PerdidoPageState();
}

class PerdidoPageState extends State<PerdidoPage>
    with TickerProviderStateMixin {
  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
    "Item Four",
  ];

  TextEditingController buscaController = TextEditingController();

  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildRegistro(context),
              SizedBox(height: 18.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 15.h,
                  right: 10.h,
                ),
                child: CustomTextFormField(
                  controller: buscaController,
                  hintText: "Buscar animal",
                  hintStyle: CustomTextStyles.bodySmallGray60002,
                  textInputAction: TextInputAction.done,
                  prefix: Container(
                    margin: EdgeInsets.fromLTRB(12.h, 7.v, 9.h, 7.v),
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
              SizedBox(height: 16.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "Categorias",
                    style: CustomTextStyles.bodyLargeComfortaaOnPrimary,
                  ),
                ),
              ),
              SizedBox(height: 10.v),
              _buildTabview(context),
              _buildTabBarView(context),
            ],
          ),
        ),
        /* bottomNavigationBar: _buildBottomBar(context), */
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 30.h,
      /* leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgLocation,
        margin: EdgeInsets.only(
          left: 19.h,
          top: 22.v,
          bottom: 20.v,
        ),
      ),
      title: AppbarTitleDropdownOne(
        margin: EdgeInsets.only(left: 6.h),
        hintText: "Itajubá, MG",
        items: dropdownItemList,
        onTap: (value) {},
      ), */
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotification,
          margin: EdgeInsets.fromLTRB(16.h, 17.v, 13.h, 3.v),
        ),
        AppbarTrailingCircleimage(
          imagePath: ImageConstant.imgPerfil,
          margin: EdgeInsets.only(
            left: 13.h,
            top: 13.v,
            right: 29.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildRegistro(BuildContext context) {
    return SizedBox(
      height: 139.v,
      width: 343.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: AppDecoration.gradientLightGreenToLightGreen.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder25,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgMaskGroup,
                height: 139.v,
                width: 343.h,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgC2,
            height: double.maxFinite,
            width: 126.h,
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(right: 30.h),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 190.h,
              margin: EdgeInsets.only(
                left: 20.h,
                top: 10.v,
              ),
              child: Text(
                "¿Tienes un animal perdido?",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.titleMediumRobotoBlack900,
              ),
            ),
          ),
          CustomElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/registrar_animal',
              );
            },
            height: 39.v,
            width: 95.h,
            text: "Registrar",
            margin: EdgeInsets.only(
              left: 17.h,
              bottom: 10.v,
            ),
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientAmberToYellowTL8Decoration,
            alignment: Alignment.bottomLeft,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 59.v,
      width: 339.h,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.primaryContainer,
        labelStyle: TextStyle(
          fontSize: 15.fSize,
          fontFamily: 'Amiri Quran Colored',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: theme.colorScheme.onPrimary,
        unselectedLabelStyle: TextStyle(
          fontSize: 15.fSize,
          fontFamily: 'Amiri Quran Colored',
          fontWeight: FontWeight.w400,
        ),
        indicatorPadding: EdgeInsets.all(
          0.5.h,
        ),
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(
            15.h,
          ),
          gradient: LinearGradient(
            begin: const Alignment(0.5, 0),
            end: const Alignment(0.5, 1),
            colors: [
              appTheme.blue300,
              appTheme.blue50001,
            ],
          ),
        ),
        tabs: [
          Tab(
            child: Container(
              padding: EdgeInsets.all(8.h),
              /* decoration: AppDecoration.outlineBlack9001.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder15,
              ), */
              child: Container(
                width: 41.h,
                margin: EdgeInsets.only(top: 3.v),
                child: const Center(
                  child: Text(
                    "Gatos",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 5.h,
                vertical: 9.v,
              ),
              child: Container(
                width: 45.h,
                margin: EdgeInsets.only(top: 1.v),
                child: const Center(
                  child: Text(
                    "Perros",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 8.v,
              ),
              /* decoration: AppDecoration.outlineBlack9001.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder15,
              ), */
              child: Container(
                width: 34.h,
                margin: EdgeInsets.only(top: 3.v),
                /* Center */
                child: const Center(
                  child: Text(
                    "Aves",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
          ),
          /* Tab(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 7.h,
                vertical: 8.v,
              ),
              /* decoration: AppDecoration.outlineBlack9001.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder15,
              ), */
              child: Container(
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup37,
                ),
              ),
            ),
          ) */
          Tab(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 8.v,
              ),
              /* decoration: AppDecoration.outlineBlack9001.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder15,
              ), */
              child: Container(
                width: 34.h,
                margin: EdgeInsets.only(top: 3.v),
                /* Center */
                child: const Center(
                  child: Text(
                    "Otros",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabBarView(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 381.v,
        child: TabBarView(
          controller: tabviewController,
          children: const [
            PerdidoGatoList(),
            PerdidoPerroList(),
            PerdidoAveList(),
            PerdidoOtrosList(),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  /* Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  } */

  ///Handling route based on bottom click actions
  /* String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.serviciosPage;
      case BottomBarEnum.Buttonshape:
        return "/";
      case BottomBarEnum.Thumbsup:
        return "/";
      case BottomBarEnum.Buttonshapebluea10001:
        return "/";
      case BottomBarEnum.User:
        return "/";
      default:
        return "/";
    }
  } */

  ///Handling page based on route
  /* Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.serviciosPage:
        return ServiciosPage();
      default:
        return DefaultWidget();
    }
  } */
}
