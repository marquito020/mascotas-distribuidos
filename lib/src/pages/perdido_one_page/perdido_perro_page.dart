import 'package:adopet_app/src/models/index.dart';
import 'package:adopet_app/src/services/index.dart';
import 'package:adopet_app/src/widgets/index.dart';
import 'package:provider/provider.dart';

import 'widgets/perdido_item_widget.dart';
import 'package:adopet_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PerdidoPerroList extends StatefulWidget {
  const PerdidoPerroList({Key? key})
      : super(
          key: key,
        );

  @override
  PerdidoPerroListState createState() => PerdidoPerroListState();
}

class PerdidoPerroListState extends State<PerdidoPerroList>
    with AutomaticKeepAliveClientMixin<PerdidoPerroList> {
  @override
  bool get wantKeepAlive => true;
  List<Perdido> perdidoListPeroo = [];
  @override
  Widget build(BuildContext context) {
    final perdidoService = Provider.of<PerdidoService>(context);

    if (perdidoService.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    perdidoListPeroo = perdidoService.perdidoPerroList;
    print(perdidoListPeroo.length);
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
                    itemCount: perdidoListPeroo.length,
                    itemBuilder: (context, index) {
                      return FavoritosoneItemWidget(
                        perdido: perdidoListPeroo[index],
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
