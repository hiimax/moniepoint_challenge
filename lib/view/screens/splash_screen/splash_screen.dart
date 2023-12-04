import '../../../res/import/import.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Timer(const Duration(seconds: 5), () async {
    //   // Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rightToLeft,duration: Duration(seconds: 2), child: OnboardingScreen()));
    //
    //   // SharedPreferences preferences = await SharedPreferences.getInstance();
    //   //
    //   // await preferences.setInt('initScreen', 1);
    //
    //   //if already shown -> 1 else 0
    // });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Text(key: Key('1'), 'data')
                  // const FadeInTranslate(
                  //   key: Key('1'),
                  //   direction: FadeInDirection.left,
                  //   duration: Duration(seconds: 3),
                  //   child: Text('data'),
                  // ),
                  // const XMargin(6),
                  // FadeInTranslate(
                  //   direction: FadeInDirection.right,
                  //   duration: const Duration(seconds: 3),
                  //   child: RichText(
                  //     text: const TextSpan(
                  //       children: [
                  //         TextSpan(
                  //           text: 'CUM',
                  //           style: TextStyle(
                  //             fontSize: 27,
                  //             fontWeight: FontWeight.w500,
                  //             color: moniepointPrimaryColor,
                  //           ),
                  //         ),
                  //         TextSpan(
                  //           text: 'RID',
                  //           style: TextStyle(
                  //             fontSize: 27,
                  //             fontWeight: FontWeight.w500,
                  //             color: moniepointWhite,
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ],
              ),
              YMargin(20),
              YMargin(50),
            ],
          ),
        ),
      ),
    );
  }
}
