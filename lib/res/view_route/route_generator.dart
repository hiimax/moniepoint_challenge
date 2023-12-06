import '../import/import.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.mainScreen:
        return CustomSlideTransition(child: const MainScreen());
      case RouteNames.searchScreen:
        return CustomSlideTransition(child: const SearchScreen());
        case RouteNames.successScreen:
        return CustomSlideTransition(child: const SuccessScreen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return CustomSlideTransition(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Page not found',
            style: TextStyle(color: Colors.red),
          ),
        ),
        body: const Center(
          child: Text(
            'Error! Page not found',
            style: TextStyle(color: Colors.red),
          ),
        ),
      ),
    );
  }
}
