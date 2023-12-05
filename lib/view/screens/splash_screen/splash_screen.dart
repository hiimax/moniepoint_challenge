import 'package:moniepoint_challenge/view/screens/splash_screen/splash_screen_keys.dart';

import '../../../res/import/import.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? timer;
  @override
  void initState() {
    super.initState();
    timer = Timer(const Duration(seconds: 5), () async {
      Navigator.pushReplacementNamed(context, RouteNames.mainScreen);
    });
  }

  @override
  void dispose() {
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
              FadeInTranslate(
                key: SplashScreenKeys.logoKey,
                direction: FadeInDirection.left,
                duration: const Duration(seconds: 3),
                child: Image.asset('logo'.mobilepng),
              ),
              const YMargin(20),
              FadeInTranslate(
                key: SplashScreenKeys.splashNameKey,
                direction: FadeInDirection.right,
                duration: const Duration(seconds: 3),
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
