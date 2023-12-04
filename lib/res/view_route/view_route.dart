import '../import/import.dart';

class RouteNames {
  // All veiw route names
  static const splash = 'splash';

  static Map<String, Widget Function(BuildContext)> routes = {
    ///Named routes to be added here in this format
    ///RouteNames.splashScreen: (context) => SplashScreen(),
    splash: (context) => const SplashScreen(),
  };
}
