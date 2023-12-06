import 'package:moniepoint_challenge/view/screens/shipment/widget/widgets.dart';

import '../../../../res/import/import.dart';

class Cancelled extends StatelessWidget {
  const Cancelled({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        cacheExtent: 1000,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 1000),
            child: const SlideAnimation(
              verticalOffset: 50.0,
              child: FadeInAnimation(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
                  child: ShipmentWidget(
                    status: ShipmentStatus.completed,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
