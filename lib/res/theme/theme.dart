import '../import/import.dart';

class MoniePointhelper {
  MoniePointhelper._();

  ///Light Theme
  static ThemeData lightTheme() {
    return ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: moniepointBackgroundColor,
      // backgroundColor: moniepointBackgroundColor,
      brightness: Brightness.light,
      primaryColor: moniepointPrimaryColor,
      hintColor: moniepointWhite,
      canvasColor: Colors.white,
      cardColor: Colors.white,
      dividerColor: Colors.grey,
      focusColor: moniepointPrimaryColor,
      hoverColor: Colors.grey[200],
      // errorColor: Colors.red,
      fontFamily: StringConstants.moniepointFontFamily,
      appBarTheme: const AppBarTheme(
        color: moniepointWhite,
      ),
      iconTheme: const IconThemeData(
        color: moniepointBlack,
        size: 24.0,
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.blue,
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
      ),
    );
  }

  ///Dark Theme
  static ThemeData darkTheme() {
    return ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: moniepointBackgroundColor,
      // backgroundColor: moniepointBackgroundColor,
      brightness: Brightness.dark,
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: moniepointBackgroundColor,
      ),
      fontFamily: StringConstants.moniepointFontFamily,
      primaryColor: Colors.blue,
      hintColor: Colors.orange,
      canvasColor: Colors.black,
      cardColor: Colors.black,
      dividerColor: Colors.grey,
      focusColor: Colors.blue,
      hoverColor: Colors.grey[200],
      // errorColor: Colors.red,
      appBarTheme: const AppBarTheme(
        color: moniepointBackgroundColor,
      ),
      iconTheme: const IconThemeData(
        color: moniepointWhite,
        size: 24.0,
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.blue,
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
      ),
    );
  }
}
