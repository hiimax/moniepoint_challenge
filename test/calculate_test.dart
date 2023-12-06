// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:moniepoint_challenge/res/import/import.dart';

void main() {
  testWidgets('calculate screen find all widget test',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(ScreenUtilInit(
        designSize: const Size(393, 852),
        child: MultiProvider(
            providers: providers,
            child: const MaterialApp(home: CalculateScreen()))));
    await tester.pump();
    // Verify that the CalculateScreen widgets are rendered.

    // Verify the presence of the back arrow icon.

    // Verify the presence of the Calculate text.
    expect(find.text('Calculate'), findsNWidgets(2));

    // Verify the presence of the Destination text.
    expect(find.text('Destination'), findsOneWidget);

    // // Verify the presence of the Packaging text.
    expect(find.text('Packaging'), findsOneWidget);

    // // Verify the presence of the Categories text.
    expect(find.text('Categories'), findsOneWidget);
  });
}
