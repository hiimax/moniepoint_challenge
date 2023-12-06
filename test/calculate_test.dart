// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:moniepoint_challenge/res/import/import.dart';
import 'package:moniepoint_challenge/view/screens/calculate/calculate_screen_keys.dart';

void main() {
  testWidgets('calculate screen find all widget test',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(ScreenUtilInit(
        designSize: const Size(393, 852),
        child: MultiProvider(
          providers: providers,
          child: MaterialApp(
              initialRoute: '/',
              routes: RouteNames.routes,
              home: const CalculateScreen()),
        )));
    await tester.pump();
    expect(find.byKey(CalculateScreenKeys.backArrow), findsOneWidget);
    expect(find.byKey(CalculateScreenKeys.calculateText), findsOneWidget);
    expect(find.byKey(CalculateScreenKeys.destinationText), findsOneWidget);
    expect(find.byKey(CalculateScreenKeys.destinationWidget), findsOneWidget);
    expect(find.byKey(CalculateScreenKeys.packagingText), findsOneWidget);
    expect(find.byKey(CalculateScreenKeys.packagingSubText), findsOneWidget);
    expect(find.byKey(CalculateScreenKeys.packagingWidget), findsOneWidget);
    expect(find.byKey(CalculateScreenKeys.categoriesText), findsOneWidget);
    expect(find.byKey(CalculateScreenKeys.categoriesSubText), findsOneWidget);
    expect(find.byKey(CalculateScreenKeys.categoriesWrap), findsOneWidget);
    expect(find.byKey(CalculateScreenKeys.calcualteButton), findsOneWidget);
  });
}
