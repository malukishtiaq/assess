import 'dart:io';
import 'dart:math';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/material.dart';

import 'common_files.dart';
import 'image_helper.dart';

const double _tinySize = 5.0;
const double _smallSize = 10.0;
const double _mediumSize = 25.0;
const double _largeSize = 50.0;
const double _massiveSize = 120.0;

const Widget horizontalSpaceTiny = SizedBox(width: _tinySize);
const Widget horizontalSpaceSmall = SizedBox(width: _smallSize);
const Widget horizontalSpaceMedium = SizedBox(width: _mediumSize);
const Widget horizontalSpaceLarge = SizedBox(width: _largeSize);

const Widget verticalSpaceTiny = SizedBox(height: _tinySize);
const Widget verticalSpaceSmall = SizedBox(height: _smallSize);
const Widget verticalSpaceMedium = SizedBox(height: _mediumSize);
const Widget verticalSpaceLarge = SizedBox(height: _largeSize);
const Widget verticalSpaceMassive = SizedBox(height: _massiveSize);

Widget spacedDivider = const Column(
  children: <Widget>[
    verticalSpaceMedium,
    Divider(color: Colors.blueGrey, height: 5.0),
    verticalSpaceMedium,
  ],
);

Widget verticalSpace(double height) => SizedBox(height: height);

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

double screenHeightFraction(BuildContext context,
        {int dividedBy = 1, double offsetBy = 0, double max = 3000}) =>
    min((screenHeight(context) - offsetBy) / dividedBy, max);

double screenWidthFraction(BuildContext context,
        {int dividedBy = 1, double offsetBy = 0, double max = 3000}) =>
    min((screenWidth(context) - offsetBy) / dividedBy, max);

double halfScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 2);

double thirdScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 3);

double quarterScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 4);

double getResponsiveHorizontalSpaceMedium(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 10);
double getResponsiveSmallFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 14, max: 15);

double getResponsiveMediumFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 16, max: 17);

double getResponsiveLargeFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 21, max: 31);

double getResponsiveExtraLargeFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 25);

double getResponsiveMassiveFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 30);

double getResponsiveFontSize(BuildContext context,
    {double? fontSize, double? max}) {
  max ??= 100;

  var responsiveSize = min(
      screenWidthFraction(context, dividedBy: 10) * ((fontSize ?? 100) / 100),
      max);

  return responsiveSize;
}

Future<String> loadAsset(String imageUrl) async {
  return await rootBundle.loadString(imageUrl);
}

Image applicationLogo() {
  return Image.asset(
    logo,
    height: 81,
    width: 255,
    fit: BoxFit.cover,
  );
}

Image applicationLogoWhite() {
  return Image.asset(
    logo,
    height: 60,
    width: 255,
    fit: BoxFit.cover,
  );
}

TextStyle normalTextStyle() {
  return const TextStyle(
    color: kcNormalTextColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
}

TextStyle signupHeaderTextStyle() {
  return const TextStyle(
    color: kcTextBlueColor,
    fontSize: 26,
    fontWeight: FontWeight.w400,
  );
}

BoxDecoration topLeftRoundContainer() {
  return BoxDecoration(
      color: Colors.white,
      border: Border.all(
        color: Colors.white,
      ),
      borderRadius: const BorderRadius.only(topLeft: Radius.circular(100)));
}

double topLeftRoundContainerHeight(context) {
  return MediaQuery.of(context).size.height /
      (Platform.isAndroid ? 1.40 : 1.30);
}

Container thinGreenBar() {
  return Container(
    height: 1,
    width: 90,
    color: kcBarColor,
  );
}

Container thickGreenBar() {
  return Container(
    height: 3,
    width: 51,
    color: kcBarColor,
  );
}

SizedBox sizeBoxHeight10() => SizedBox(height: Platform.isAndroid ? 10 : 20);

SizedBox sizeBoxHeight20() => SizedBox(height: Platform.isAndroid ? 20 : 40);

SizedBox sizeBoxHeight30() => SizedBox(height: Platform.isAndroid ? 30 : 60);
