import 'package:adopet_app/src/models/index.dart';
import 'package:adopet_app/src/services/index.dart';
import 'package:adopet_app/src/widgets/index.dart';
import 'package:provider/provider.dart';

import 'widgets/adoptar_item_widget.dart';
import 'package:adopet_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AdopcionOtrosList extends StatefulWidget {
  const AdopcionOtrosList({Key? key})
      : super(
          key: key,
        );

  @override
  AdopcionOtrosListState createState() => AdopcionOtrosListState();
}

class AdopcionOtrosListState extends State<AdopcionOtrosList>
    with AutomaticKeepAliveClientMixin<AdopcionOtrosList> {
  @override
  bool get wantKeepAlive => true;
  List<Adopcion> adopcionListOtro = [];
  @override
  Widget build(BuildContext context) {
    final adopcionService = Provider.of<AdopcionService>(context);

    if (adopcionService.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    adopcionListOtro = adopcionService.adopcioOtroList;
    print(adopcionListOtro.length);
    super.build(context);
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: _buildScrollView(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 3.v),
          Padding(
            padding: EdgeInsets.only(
              left: 21.h,
              right: 5.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Ver todos",
                        style: CustomTextStyles.bodySmallRobotoAmber300,
                      ),
                      Container(
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        margin: EdgeInsets.only(left: 4.h),
                        decoration:
                            AppDecoration.gradientAmberToYellow.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder4,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgArrowRight,
                          height: 14.adaptSize,
                          width: 14.adaptSize,
                          alignment: Alignment.center,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 17.v),
                Padding(
                  padding: EdgeInsets.only(right: 18.h),
                  child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 151.v,
                      crossAxisCount: 2,
                      mainAxisSpacing: 19.h,
                      crossAxisSpacing: 19.h,
                    ),
                    physics: BouncingScrollPhysics(),
                    itemCount: adopcionListOtro.length,
                    itemBuilder: (context, index) {
                      return FavoritosoneItemWidget(
                        adopcion: adopcionListOtro[index],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
