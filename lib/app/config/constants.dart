import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const kPrimaryColor = Color(0xFF24a896);
const kBgWhite = Color(0xFFffffff);
const kBgBlack = Color(0xFF191508);
const kGrey = Color(0xFF595959);
const kInactiveColor = Color(0xFFa6a6a6);
const kInactiveColor2 = Color(0xFFeaecf0);
const kRed = Color(0xFFd92d20);
const kOrange = Color(0xFFdc6803);

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

const kDivider = Divider(color: kInactiveColor2);
