import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'widgets/home_four_item_widget.dart';

class HomeInitialPage extends StatefulWidget {
  const HomeInitialPage({Key? key})
      : super(
          key: key,
        );
  @override
  HomeInitialPageState createState() => HomeInitialPageState();
}

class HomeInitialPageState extends State<HomeInitialPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: AppDecoration.fillTeal,
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: _buildAppbar(context),
          ),
          SizedBox(height: 20.h),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(
                  left: 18.h,
                  top: 24.h,
                  right: 18.h,
                ),
                decoration: AppDecoration.fillOnPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL30,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildStackrone(context),
                    SizedBox(height: 16.h),
                    _buildHomefour(context),
                    SizedBox(height: 34.h)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      title: AppbarSubtitleTwo(
        text: "Hi, Baseness",
        margin: EdgeInsets.only(left: 92.h),
      ),
      actions: [
        Container(
          height: 28.h,
          width: 26.h,
          margin: EdgeInsets.only(right: 23.h),
          child: Stack(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgIcon34,
                height: 24.h,
                width: 26.h,
                margin: EdgeInsets.only(right: 2.h),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 18.h,
                  height: 18.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 10.h),
                  decoration: AppDecoration.fillDeepOrange.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Text(
                    "3",
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.labelMediumPoppins,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildStackrone(BuildContext context) {
    return Container(
      height: 234.h,
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 4.h),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 220.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 220.h,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          height: 164.h,
                          width: 260.h,
                          decoration: BoxDecoration(
                            color: appTheme.deepOrange100,
                            borderRadius: BorderRadius.circular(
                              10.h,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: theme.colorScheme.secondaryContainer,
                                spreadRadius: 2.h,
                                blurRadius: 2.h,
                                offset: Offset(
                                  0,
                                  4,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 178.h,
                          width: 286.h,
                          margin: EdgeInsets.only(bottom: 8.h),
                          decoration: BoxDecoration(
                            color: appTheme.cyan800,
                            borderRadius: BorderRadius.circular(
                              10.h,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: theme.colorScheme.secondaryContainer,
                                spreadRadius: 2.h,
                                blurRadius: 2.h,
                                offset: Offset(
                                  0,
                                  4,
                                ),
                              )
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.only(
                              left: 20.h,
                              top: 22.h,
                              bottom: 22.h,
                            ),
                            decoration: AppDecoration.column5,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 120.h,
                                  child: Text(
                                    "Charcoal1470",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        CustomTextStyles.headlineSmallBlack900,
                                  ),
                                ),
                                Text(
                                  "Total Tabungan",
                                  style: CustomTextStyles.titleSmallBlack900_1,
                                ),
                                SizedBox(height: 34.h),
                                Text(
                                  "Rp. 10.000",
                                  style: CustomTextStyles.titleLargeBlack900,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: 8.h,
                        bottom: 8.h,
                      ),
                      child: Text(
                        "R",
                        style: CustomTextStyles.displayLargeBluegray100,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 42.h),
            child: Text(
              "R",
              style: CustomTextStyles.poppinsBluegray100,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHomefour(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.h),
      child: ResponsiveGridListBuilder(
        minItemWidth: 1,
        minItemsPerRow: 3,
        maxItemsPerRow: 3,
        horizontalGridSpacing: 16.h,
        verticalGridSpacing: 16.h,
        builder: (context, items) => ListView(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          children: items,
        ),
        gridItems: List.generate(9, (index) {
          return HomeFourItemWidget();
        }),
      ),
    );
  }
}
