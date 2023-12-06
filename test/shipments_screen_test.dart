// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:moniepoint_challenge/res/import/import.dart';
import 'package:moniepoint_challenge/view/screens/shipment/shipment_screen_keys.dart';

void main() {
  testWidgets('shipments screen find all widget test',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(ScreenUtilInit(
        designSize: const Size(393, 852),
        child: MultiProvider(
          providers: providers,
          child: MaterialApp(
              initialRoute: '/',
              routes: RouteNames.routes,
              home: const ShipmentScreen()),
        )));
    await tester.pump();
    expect(find.byKey(ShipmentsScreenKeys.backArrow), findsOneWidget);
    expect(find.byKey(ShipmentsScreenKeys.allTabBarView), findsOneWidget);
    expect(find.byKey(ShipmentsScreenKeys.shipmentHistory), findsOneWidget);
    expect(find.byKey(ShipmentsScreenKeys.shipments), findsOneWidget);
    expect(find.byKey(ShipmentsScreenKeys.tabBar), findsOneWidget);
    expect(find.byKey(ShipmentsScreenKeys.tabBarView), findsOneWidget);
  });
}
