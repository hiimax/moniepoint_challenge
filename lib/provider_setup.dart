import 'package:moniepoint_challenge/res/import/import.dart';
import 'package:provider/single_child_widget.dart';

import 'data/provider/test_provider.dart';

// final locationProvider = ChangeNotifierProvider((ref) => LocationProvider());
// final authenticationProvider =
//     ChangeNotifierProvider((ref) => AuthenticationProvider());
// final propertyManagementProvider =
//     ChangeNotifierProvider((ref) => PropertyManagementProvider());

List<SingleChildWidget> providers = [
  ...independentServices,
  ...dependentServices,
  ChangeNotifierProvider(create: (_) => TestProvider()),
  ...uiConsumableProviders
];

List<SingleChildWidget> independentServices = [];

List<SingleChildWidget> dependentServices = [];

// Place All ChangeNotifierProvider's separated by a comma ","

List<SingleChildWidget> uiConsumableProviders = [];
