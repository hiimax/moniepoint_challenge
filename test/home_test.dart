// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:moniepoint_challenge/view/screens/home/home.dart';
import 'package:moniepoint_challenge/view/screens/home/home_screen_keys.dart';

void main() {
  testWidgets('Home screen find all widget test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: HomeScreen()));

    // Verify that our counter starts at 0.
    expect(find.byKey(HomeScreenKeys.circleAvatar), findsOneWidget);
    expect(find.byKey(HomeScreenKeys.yourLocation), findsOneWidget);
    expect(find.byKey(HomeScreenKeys.location), findsOneWidget);
    expect(find.byKey(HomeScreenKeys.notifications), findsOneWidget);
    expect(find.byKey(HomeScreenKeys.searchIcon), findsOneWidget);
    expect(find.byKey(HomeScreenKeys.searchTextFormField), findsOneWidget);
    expect(find.byKey(HomeScreenKeys.searchTextFormFieldSuffixIcon),
        findsOneWidget);
    expect(find.byKey(HomeScreenKeys.trackingText), findsOneWidget);
    expect(find.byKey(HomeScreenKeys.trackingContainer), findsOneWidget);
    expect(find.byKey(HomeScreenKeys.availableVehicles), findsOneWidget);
    expect(find.byKey(HomeScreenKeys.availableVehiclesList), findsOneWidget);
  });
}
