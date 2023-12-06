// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:moniepoint_challenge/res/import/import.dart';
import 'package:moniepoint_challenge/view/screens/home/home_screen_keys.dart';
import 'package:moniepoint_challenge/view/screens/search_screen/search_screen_keys.dart';

void main() {
  testWidgets('Home screen find all widget test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(ScreenUtilInit(
        designSize: const Size(393, 852),
        child: MultiProvider(
          providers: providers,
          child: MaterialApp(
              initialRoute: '/',
              routes: RouteNames.routes,
              home: const HomeScreen()),
        )));
    await tester.pump();
    expect(find.byKey(HomeScreenKeys.circleAvatar), findsOneWidget);
    expect(find.byKey(HomeScreenKeys.location), findsOneWidget);
    expect(find.byKey(HomeScreenKeys.yourLocation), findsOneWidget);
    expect(find.byKey(HomeScreenKeys.searchTextFormField), findsOneWidget);
    expect(find.byKey(HomeScreenKeys.searchTextFormFieldSuffixIcon),
        findsOneWidget);
    expect(find.byKey(HomeScreenKeys.trackingText), findsOneWidget);
    expect(find.byKey(HomeScreenKeys.trackingContainer), findsOneWidget);
    expect(find.byKey(HomeScreenKeys.availableVehicles), findsOneWidget);
    expect(find.byKey(HomeScreenKeys.availableVehiclesList), findsOneWidget);

    await tester.tap(find.byKey(HomeScreenKeys.searchWidget));
    await tester.pumpAndSettle();
    expect(find.byKey(SearchScreenScreenKeys.backButton), findsOneWidget);
  });
}
