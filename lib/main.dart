import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../res/import/import.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Directory? dir = await getApplicationDocumentsDirectory();
  // Hive.init(dir.path);
  // await Hive.openBox("app_data");

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      builder: (context, child) => MultiProvider(
        providers: providers,
        child: MaterialApp(
          builder: (BuildContext context, Widget? widget) {
            ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
              return CustomError(errorDetails: errorDetails);
            };
            return widget!;
          },
          debugShowCheckedModeBanner: false,
          title: StringConstants.appName,
          theme: MoniePointhelper.lightTheme(),
          initialRoute: '/',
          routes: RouteNames.routes,
          home: Builder(builder: (context) {
            return const SplashScreen();
          }),
        ),
      ),
    );
  }
}
