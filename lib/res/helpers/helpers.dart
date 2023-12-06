import 'package:intl/intl.dart';

import '../import/import.dart';

_parseAndDecode(String response) {
  return jsonDecode(response);
}

parseJson(String text) {
  return compute(_parseAndDecode, text);
}

formatCurrency(dynamic value) {
  NumberFormat("#,##0.00", "en_US").format(value);
}

String convertToAgo(DateTime input) {
  Duration diff = DateTime.now().difference(input);
  return '${diff.inDays}';
}


String formatCurrencyValue(num value) {
  String formattedValue = value.toStringAsFixed(2);
  List<String> parts = formattedValue.split('.');

  final RegExp regex = RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');
  parts[0] = parts[0].replaceAllMapped(regex, (Match match) => '${match[1]},');

  return '${parts[0]}.${parts[1]}';
}

class ParserService {
  static num parseMoneyToNum(String money) {
    return num.tryParse(money.replaceAll(',', '')) ?? 0;
  }

}
