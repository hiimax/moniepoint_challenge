import '../import/import.dart';

class RouteNames {
  // All veiw route names
  static const splash = 'splash';
  static const mainScreen = 'mainScreen';
  static const searchScreen = 'searchScreen';

  static Map<String, Widget Function(BuildContext)> routes = {
    ///Named routes to be added here in this format
    ///RouteNames.splashScreen: (context) => SplashScreen(),
    splash: (context) => const SplashScreen(),
    mainScreen: (context) => const MainScreen(),
    searchScreen: (context) => const SearchScreen(),
  };
}
