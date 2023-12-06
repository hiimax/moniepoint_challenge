import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../res/import/import.dart';

class MobileBottomNavigation extends StatelessWidget {
  const MobileBottomNavigation({
    super.key,
    required this.onPressed,
    required this.currentIndex,
  });
  final Function(int)? onPressed;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context, setState) {
      return SizedBox(
        height: (95).sp,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: moniepointWhite,
          selectedIconTheme: const IconThemeData(color: moniepointPrimaryColor),
          showSelectedLabels: true,
          selectedItemColor: moniepointPrimaryColor,
          unselectedItemColor: moniepointGrey,
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
          currentIndex: currentIndex,
          onTap: onPressed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: moniepointGrey,
              ),
              label: 'Home',
              activeIcon: Icon(
                Icons.home_outlined,
                color: moniepointPrimaryColor,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.calculate_outlined,
                color: moniepointGrey,
              ),
              label: 'Calculate',
              activeIcon: Icon(
                Icons.calculate_outlined,
                color: moniepointPrimaryColor,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.local_shipping,
                color: moniepointGrey,
              ),
              label: 'Shipment',
              activeIcon: Icon(
                Icons.local_shipping,
                color: moniepointPrimaryColor,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: moniepointGrey,
              ),
              label: 'Profile',
              activeIcon: Icon(
                Icons.person,
                color: moniepointPrimaryColor,
              ),
            ),
          ],
        ),
      );
    });
  }
}
