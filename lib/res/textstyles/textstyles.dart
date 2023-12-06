import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_challenge/res/import/import.dart';

class MoniePointTextStyle {
  static TextStyle heading1 = TextStyle(
      fontSize: (30).sp,
      color: moniepointTextColor,
      fontStyle: FontStyle.normal,
      fontFamily: StringConstants.moniepointFontFamily);

  static TextStyle heading1WithPrimaryColor = TextStyle(
      fontSize: (30).sp,
      color: moniepointPrimaryColor,
      fontStyle: FontStyle.normal,
      fontFamily: StringConstants.moniepointFontFamily);
  static TextStyle heading2 = TextStyle(
      fontSize: (20).sp,
      color: moniepointTextColor,
      fontStyle: FontStyle.normal,
      fontFamily: StringConstants.moniepointFontFamily);
  static TextStyle heading3 = TextStyle(
      fontSize: (18).sp,
      color: moniepointTextColor,
      fontStyle: FontStyle.normal,
      fontFamily: StringConstants.moniepointFontFamily);
  static TextStyle subHeading = TextStyle(
      fontSize: (16).sp,
      color: moniepointTextColor,
      fontStyle: FontStyle.normal,
      fontFamily: StringConstants.moniepointFontFamily);
  static TextStyle smallSubHeading = TextStyle(
      fontSize: (12).sp,
      color: moniepointTextColor,
      fontStyle: FontStyle.normal,
      fontFamily: StringConstants.moniepointFontFamily);
  static TextStyle bodyText = TextStyle(
      fontSize: (16).sp,
      color: moniepointTextColor,
      fontStyle: FontStyle.normal,
      fontFamily: StringConstants.moniepointFontFamily);
  static TextStyle buttonText = TextStyle(
      fontSize: (16.sp),
      // color: CbColors.cAccentLighten3,
      fontStyle: FontStyle.normal,
      fontFamily: StringConstants.moniepointFontFamily);
  static TextStyle errorSubText = TextStyle(
      color: kDebugMode ? Colors.red : Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 21.sp);
}
