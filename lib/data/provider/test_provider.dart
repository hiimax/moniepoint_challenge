import '../../res/import/import.dart';

class TestProvider extends ChangeNotifier {
  static TestProvider? _instance;

  // TestProvider() {}

  static TestProvider get instance {
    _instance ??= TestProvider();
    return _instance!;
  }
}
