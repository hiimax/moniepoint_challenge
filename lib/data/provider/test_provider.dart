import 'package:moniepoint_challenge/data/model/shipment_model.dart';

import '../../res/import/import.dart';

class TestProvider extends ChangeNotifier {
  static TestProvider? _instance;

  // TestProvider() {}

  static TestProvider get instance {
    _instance ??= TestProvider();
    return _instance!;
  }

  final List<ShipmentModel> _list = [
    ShipmentModel(
        ID: '#NE3452792H9902',
        name: ' Mackbook pro M2',
        sendindLocation: 'Barcelona',
        deliveryLocation: 'Paris'),
    ShipmentModel(
        ID: '#NE3462792H9943',
        name: ' Mackbook pro M1',
        sendindLocation: 'Nigeria',
        deliveryLocation: 'Barcelona'),
    ShipmentModel(
        ID: '#NE3472792G9964',
        name: ' Summer linen jacket',
        sendindLocation: 'UAE',
        deliveryLocation: 'Abuja'),
    ShipmentModel(
        ID: '#NE3452792Y9902',
        name: ' Tapered-fit jeans AW',
        sendindLocation: 'Canada',
        deliveryLocation: 'Lagos'),
    ShipmentModel(
        ID: '#NE3452792J9902',
        name: ' Slim fit jeans Aw',
        sendindLocation: 'China',
        deliveryLocation: 'Ghana'),
    ShipmentModel(
        ID: '#NE3472792M9902',
        name: ' Office setup desk',
        sendindLocation: 'Singapore',
        deliveryLocation: 'Enugu'),
    ShipmentModel(
        ID: '#NE3472792S9902',
        name: ' Mackbook air',
        sendindLocation: 'Israel',
        deliveryLocation: 'Paris'),
    ShipmentModel(
        ID: '#NE3482792X9902',
        name: ' Mackbook tablet',
        sendindLocation: 'Dubai',
        deliveryLocation: 'Nigeria'),
    ShipmentModel(
        ID: '#NE3452792L9902',
        name: ' Apple watch',
        sendindLocation: 'Russia',
        deliveryLocation: 'Kenya'),
    ShipmentModel(
        ID: '#NE3492792J9902',
        name: ' Jordan airforce 1',
        sendindLocation: 'Spain',
        deliveryLocation: 'Germany'),
    ShipmentModel(
        ID: '#NE3402792S9902',
        name: ' Slippers',
        sendindLocation: 'America',
        deliveryLocation: 'Paris'),
    ShipmentModel(
        ID: '#NE3442792D9902',
        name: ' Gaming chair',
        sendindLocation: 'Texas',
        deliveryLocation: 'China'),
    ShipmentModel(
        ID: '#NE3432792T9902',
        name: ' Gaming mouse',
        sendindLocation: 'Silicon valley',
        deliveryLocation: 'Texas'),
  ];

  get list => _list;

  List<ShipmentModel> _searchList = [];
  get searchList => _searchList;

  void searchThroughList(String value) {
    if (value.isEmpty) {
      _searchList = _list;
    } else {
      _searchList = _list
          .where((element) =>
              element.ID.toLowerCase().contains(value.toLowerCase()))
          .toList();
    }
    notifyListeners();
  }
}
