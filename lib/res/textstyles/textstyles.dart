import 'package:moniepoint_challenge/res/import/import.dart';

class MoniePointTextStyle {
  static TextStyle heading1 = const TextStyle(
      fontSize: (30),
      color: moniepointTextColor,
      fontStyle: FontStyle.normal,
      fontFamily: StringConstants.moniepointFontFamily);

  static TextStyle heading1WithPrimaryColor = const TextStyle(
      fontSize: (30),
      color: moniepointPrimaryColor,
      fontStyle: FontStyle.normal,
      fontFamily: StringConstants.moniepointFontFamily);
  static TextStyle heading2 = const TextStyle(
      fontSize: (20),
      color: moniepointTextColor,
      fontStyle: FontStyle.normal,
      fontFamily: StringConstants.moniepointFontFamily);
  static TextStyle heading3 = const TextStyle(
      fontSize: (18),
      color: moniepointTextColor,
      fontStyle: FontStyle.normal,
      fontFamily: StringConstants.moniepointFontFamily);
  static TextStyle subHeading = const TextStyle(
      fontSize: (16),
      color: moniepointTextColor,
      fontStyle: FontStyle.normal,
      fontFamily: StringConstants.moniepointFontFamily);
  static TextStyle smallSubHeading = const TextStyle(
      fontSize: (12),
      color: moniepointTextColor,
      fontStyle: FontStyle.normal,
      fontFamily: StringConstants.moniepointFontFamily);
  static TextStyle bodyText = const TextStyle(
      fontSize: (16),
      color: moniepointTextColor,
      fontStyle: FontStyle.normal,
      fontFamily: StringConstants.moniepointFontFamily);
  static TextStyle buttonText = const TextStyle(
      fontSize: (16),
      // color: CbColors.cAccentLighten3,
      fontStyle: FontStyle.normal,
      fontFamily: StringConstants.moniepointFontFamily);
  static TextStyle errorSubText = const TextStyle(
      color: kDebugMode ? Colors.red : Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 21);
}
