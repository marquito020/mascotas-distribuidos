import 'package:adopet_app/core/app_export.dart';
import 'package:adopet_app/src/constants/routes.dart';
import 'package:adopet_app/src/widgets/index.dart';
import 'package:adopet_app/theme/custom_button_style.dart';
import 'package:flutter/material.dart';
/* import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs; */

class HomePage extends StatefulWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  String get adoptarRoute => Routes.adoptar;
  String get perdidoRoute => Routes.perdido;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    String adoptarImageButton = ImageConstant.imgButtonAdoptar;
    String perdidoImageButton = ImageConstant.imgButtonPerdido;
    String adoptartitleButton = "Adoptar";
    String perdidotitleButton = "Perdido";

    /* String saludtitleButton = "Salud"; */

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 6.h),
          child: Column(
            children: [
              _buildTwentyThree(context),
              SizedBox(height: 15.v),
              _botonAdoptar(context,
                  title: adoptartitleButton,
                  image: adoptarImageButton,
                  route: adoptarRoute),
              SizedBox(height: 10.v),
              _botonAdoptar(context,
                  title: perdidotitleButton,
                  image: perdidoImageButton,
                route: perdidoRoute),
              /* _botonAdoptar(context,
                  title: adoptartitleButton,
                  image: adoptarImageButton,
                  route: adoptarRoute),
              SizedBox(height: 10.v),
              _botonAdoptar(context,
                  title: adoptartitleButton,
                  image: adoptarImageButton,
                  route: adoptarRoute),
              SizedBox(height: 10.v),
              _botonAdoptar(context,
                  title: adoptartitleButton,
                  image: adoptarImageButton,
                  route: adoptarRoute),
              SizedBox(height: 10.v),
              _botonAdoptar(context,
                  title: adoptartitleButton,
                  image: adoptarImageButton,
                  route: adoptarRoute), */
            ],
          ),
        ),
        /* bottomNavigationBar: _buildBottomBar(context), */
      ),
    );
  }

  Widget _botonAdoptar(BuildContext context,
      {required title, required String image, required String route}) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 110,
      child: Ink.image(
        image: AssetImage(image),
        fit: BoxFit.fill,
        child: InkWell(
          onTap: () {
            // Handle button tap
            Navigator.pushNamed(context, route);
          },
          child: Center(
            child: Text(
              title,
              style: theme.textTheme.displayLarge,
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 24.h,
      /* leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgLocation,
        margin: EdgeInsets.only(
          left: 10.h,
          top: 21.v,
          bottom: 21.v,
        ),
      ),
      title: AppbarTitleDropdown(
        margin: EdgeInsets.only(left: 7.h),
        hintText: "Santa Cruz, BO",
        items: dropdownItemList,
        onTap: (value) {},
      ), */
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotification,
          margin: EdgeInsets.fromLTRB(16.h, 16.v, 13.h, 4.v),
        ),
        AppbarTrailingCircleimage(
          onTap: () {
            Navigator.pushNamed(context, Routes.perfil);
          },
          imagePath: ImageConstant.imgPerfil,
          margin: EdgeInsets.only(
            left: 12.h,
            top: 13.v,
            right: 29.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTwentyThree(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 3.h),
      decoration: AppDecoration.gradientBlueToBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Container(
        height: 139.v,
        width: 343.h,
        padding: EdgeInsets.symmetric(horizontal: 17.h),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgC2,
              height: 149.v,
              width: 109.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(right: 10.h),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 190.h,
                margin: EdgeInsets.only(
                  left: 3.h,
                  top: 10.v,
                ),
                child: Text(
                  "¿Tienes un animal perdido?",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleMediumRobotoPrimaryContainer,
                ),
              ),
            ),
            CustomElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/registrar_perdido',
                );
              },
              height: 29.v,
              width: 98.h,
              text: "Registrar",
              margin: EdgeInsets.only(bottom: 16.v),
              buttonStyle: CustomButtonStyles.none,
              decoration: CustomButtonStyles.gradientAmberToYellowDecoration,
              alignment: Alignment.bottomLeft,
            ),
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
        return Routes.serviciosPage;
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
}
