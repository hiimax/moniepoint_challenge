// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:moniepoint_challenge/view/screens/splash_screen/splash_screen.dart';
import 'package:moniepoint_challenge/view/screens/splash_screen/splash_screen_keys.dart';

void main() {
  testWidgets('this test is to check if all widgets is available',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: SplashScreen()));

    expect(find.byKey(SplashScreenKeys.logoKey), findsOneWidget);
    expect(find.byKey(SplashScreenKeys.splashNameKey), findsOneWidget);
  });
}
