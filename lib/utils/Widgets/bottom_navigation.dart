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
        height: (62),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: moniepointTransparent,
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
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'home'.mobilepng,
                color: moniepointGrey,
              ),
              label: 'Home',
              activeIcon: Image.asset(
                'home'.mobilepng,
                color: moniepointPrimaryColor,
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'connect'.mobilepng,
                color: moniepointGrey,
              ),
              label: 'Connect',
              activeIcon: Image.asset(
                'connect'.mobilepng,
                color: moniepointPrimaryColor,
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'chat'.mobilepng,
                color: moniepointGrey,
              ),
              label: 'Chat',
              activeIcon: Image.asset(
                'chat'.mobilepng,
                color: moniepointPrimaryColor,
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'profile'.mobilepng,
                color: moniepointGrey,
              ),
              label: 'Profile',
              activeIcon: Image.asset(
                'profile'.mobilepng,
                color: moniepointPrimaryColor,
              ),
            ),
          ],
        ),
      );
    });
  }
}
