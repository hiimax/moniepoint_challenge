import 'package:moniepoint_challenge/view/screens/splash_screen/splash_screen_keys.dart';

import '../../../res/import/import.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  Timer? timer;
  late final AnimationController _controller;

  late final Animation<Offset> _offsetAnimation;
  late final Animation<Offset> _voffsetAnimation;
  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0.0, 0.2),
      end: const Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
    _voffsetAnimation = Tween<Offset>(
      begin: const Offset(0.3, 0.0),
      end: const Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
    _controller.forward();
    timer = Timer(const Duration(seconds: 5), () async {
      Navigator.pushReplacementNamed(context, RouteNames.mainScreen);
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SlideTransition(
                position: _voffsetAnimation,
                key: SplashScreenKeys.logoKey,
                child: Image.asset('logo'.mobilepng),
              ),
              const YMargin(20),
              SlideTransition(
                position: _offsetAnimation,
                key: SplashScreenKeys.splashNameKey,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'MONIE',
                        style: MoniePointTextStyle.heading1WithPrimaryColor,
                      ),
                      TextSpan(
                        text: 'POINT',
                        style: MoniePointTextStyle.heading1WithPrimaryColor,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
