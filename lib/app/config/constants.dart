import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

const kPrimaryColor = Color(0xFF24a896);
const kBgWhite = Color(0xFFffffff);
const kBgBlack = Color(0xFF191508);
const kGrey = Color(0xFF595959);
const kInactiveColor = Color(0xFFa6a6a6);
const kInactiveColor2 = Color(0xFFeaecf0);
const kRed = Color(0xFFd92d20);
const kOrange = Color(0xFFdc6803);
const kGreen = Color(0xFF1b7e71);

const kDefaultDuration = Duration(milliseconds: 500);
const kDefaultFastDuration = Duration(milliseconds: 200);

const kDefaultScaffoldPadding = EdgeInsets.symmetric(horizontal: 15);

TextStyle get kDefaultTextStyle {
  return const TextStyle(
    color: kBgBlack,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );
}

const kDefaultBorderRadius10 = BorderRadius.all(
  Radius.circular(10),
);
const kDefaultBorderRadius = BorderRadius.all(
  Radius.circular(5),
);

const kDivider = Divider(color: kInactiveColor2);

const kIconTheme = IconThemeData(
  color: kPrimaryColor,
);

const kAppbarTheme = AppBarTheme(
  iconTheme: kIconTheme,
  surfaceTintColor: kBgWhite,
);

const kFloatingActionButton = FloatingActionButtonThemeData(
  backgroundColor: kPrimaryColor,
);

const kTextSelectionTheme = TextSelectionThemeData(
  cursorColor: kPrimaryColor,
  selectionHandleColor: kPrimaryColor
);

const kInputDecorationTheme = InputDecorationTheme(
  hoverColor: kPrimaryColor,
  focusColor: kPrimaryColor,
  border: OutlineInputBorder(
    borderRadius: kDefaultBorderRadius10,
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: kDefaultBorderRadius10,
    borderSide: BorderSide(
      color: kPrimaryColor,
    ),
  ),
);

const kTabbarTheme = TabBarTheme(
  labelColor: kPrimaryColor,
  indicatorColor: kPrimaryColor,
);

DecoratedLineConnector timelineConnector({Color color = kPrimaryColor}) {
  return DecoratedLineConnector(
    thickness: 4,
    decoration: BoxDecoration(
      color: color,
    ),
  );
}

const kSellerBox = 'seller';
const kProvinceBox = 'province';
const kDistrictBox = 'district';
const kSubdistrictBox = 'subdistrict';
const kFinancingBox = 'financing';