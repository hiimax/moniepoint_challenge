import 'package:moniepoint_challenge/data/provider/test_provider.dart';

import '../../../../res/import/import.dart';

class ChipWidget extends StatelessWidget {
  const ChipWidget({super.key, required this.label, required this.index});
  final String label;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Consumer<TestProvider>(
      builder: (context, test, _) {
        return Chip(
          label: Text(label),
          avatar: test.categoryList[index].isSelected
              ? Icon(
                  Icons.check_circle_outline,
                  color: test.categoryList[index].isSelected
                      ? moniepointWhite
                      : moniepointTextColor,
                )
              : null,
          backgroundColor: test.categoryList[index].isSelected
              ? moniepointPrimaryColor
              : moniepointTransparent,
          labelStyle: TextStyle(
            color: test.categoryList[index].isSelected
                ? moniepointWhite
                : moniepointTextColor,
            fontWeight: FontWeight.w400,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(
              color: test.categoryList[index].isSelected
                  ? moniepointWhite
                  : moniepointTextColor,
            ),
          ),
        );
      },
    );
  }
}
