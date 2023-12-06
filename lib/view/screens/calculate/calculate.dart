import '../../../res/import/import.dart';

class CalculateScreen extends StatefulWidget {
  const CalculateScreen({super.key});

  @override
  State<CalculateScreen> createState() => _CalculateScreenState();
}

class _CalculateScreenState extends State<CalculateScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final TabController _tabController;

  late final Animation<Offset> _offsetAnimation;
  late final Animation<Offset> _appBarTitlesetAnimation;
  late final Animation<Offset> _yOffsetAnimation;
  late final Animation<Offset> _voffsetAnimation;
  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0.0, 0.2),
      end: const Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
    _appBarTitlesetAnimation = Tween<Offset>(
      begin: const Offset(0.2, 0),
      end: const Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
    _yOffsetAnimation = Tween<Offset>(
      begin: const Offset(0.0, -0.5),
      end: const Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
    _voffsetAnimation = Tween<Offset>(
      begin: const Offset(0.0, 0.2),
      end: const Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 140,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            color: moniepointPrimaryColor,
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: SlideTransition(
                          position: _offsetAnimation,
                          child: InkWell(
                            onTap: () => Navigator.pop(context),
                            child: const Icon(
                              Icons.arrow_back_ios,
                              color: moniepointWhite,
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      SlideTransition(
                        position: _yOffsetAnimation,
                        child: SlideTransition(
                          position: _appBarTitlesetAnimation,
                          child: Text('Calculate',
                              style: MoniePointTextStyle.heading2.copyWith(
                                color: moniepointWhite,
                              )),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          const YMargin(
            30,
          ),
          SlideTransition(
            position: _offsetAnimation,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Text(
                    'Destination',
                    // key: HomeScreenKeys.trackingText,
                    style: MoniePointTextStyle.heading2.copyWith(
                      color: moniepointPrimaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const YMargin(5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              decoration: BoxDecoration(
                  color: moniepointWhite,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 3),
                      color: moniepointBlack.withOpacity(0.1),
                      blurRadius: 10,
                      spreadRadius: 0,
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    CustomTextFormField(
                      hintText: 'Send location',
                      // key: HomeScreenKeys.trackingNumber,
                      // controller: _trackingNumberController,
                      fillColor: moniepointGrey.withOpacity(0.2),
                      focusedBorderColor: moniepointGrey.withOpacity(0.5),
                      enabledBorderColor: moniepointGrey.withOpacity(0.5),
                      textStyle: MoniePointTextStyle.subHeading.copyWith(
                        color: moniepointBlack,
                      ),
                      borderRadius: 10,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: SizedBox(
                          width: 50,
                          child: Row(
                            children: [
                              const Icon(Icons.unarchive_outlined,
                                  color: moniepointGrey),
                              const Icon(Icons.more_vert,
                                  color: moniepointGrey),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const YMargin(10),
                    CustomTextFormField(
                      hintText: 'Receiver location',
                      // key: HomeScreenKeys.trackingNumber,
                      // controller: _trackingNumberController,
                      fillColor: moniepointGrey.withOpacity(0.2),
                      focusedBorderColor: moniepointGrey.withOpacity(0.5),
                      enabledBorderColor: moniepointGrey.withOpacity(0.5),
                      textStyle: MoniePointTextStyle.subHeading.copyWith(
                        color: moniepointBlack,
                      ),
                      borderRadius: 10,
                      prefixIcon: const Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: SizedBox(
                          width: 50,
                          child: Row(
                            children: [
                              Icon(Icons.archive_outlined,
                                  color: moniepointGrey),
                              Icon(Icons.more_vert, color: moniepointGrey),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const YMargin(10),
                    CustomTextFormField(
                      hintText: 'Approx weight',
                      // key: HomeScreenKeys.trackingNumber,
                      // controller: _trackingNumberController,
                      fillColor: moniepointGrey.withOpacity(0.2),
                      focusedBorderColor: moniepointGrey.withOpacity(0.5),
                      enabledBorderColor: moniepointGrey.withOpacity(0.5),
                      textStyle: MoniePointTextStyle.subHeading.copyWith(
                        color: moniepointBlack,
                      ),
                      borderRadius: 10,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: SizedBox(
                          width: 50,
                          child: Row(
                            children: [
                              const Icon(Icons.hourglass_empty_outlined,
                                  color: moniepointGrey),
                              const Icon(Icons.more_vert,
                                  color: moniepointGrey),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const YMargin(
            30,
          ),
          SlideTransition(
            position: _offsetAnimation,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Packaging',
                        // key: HomeScreenKeys.trackingText,
                        style: MoniePointTextStyle.heading2.copyWith(
                          color: moniepointPrimaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'What are you sending?',
                        // key: HomeScreenKeys.trackingText,
                        style: MoniePointTextStyle.subHeading.copyWith(
                          color: moniepointGrey,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const YMargin(5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomTextFormField(
              hintText: 'Box',
              // key: HomeScreenKeys.trackingNumber,
              // controller: _trackingNumberController,
              fillColor: moniepointWhite,
              focusedBorderColor: moniepointWhite,
              enabledBorderColor: moniepointWhite,
              textStyle: MoniePointTextStyle.subHeading.copyWith(
                color: moniepointBlack,
              ),
              borderRadius: 10,
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: SizedBox(
                  width: 50,
                  child: Row(
                    children: [
                      SizedBox(
                          width: 30,
                          height: 30,
                          child: Image.asset(
                            'cardboard_box'.mobilepng,
                            fit: BoxFit.contain,
                          )),
                      Icon(Icons.more_vert, color: moniepointGrey),
                    ],
                  ),
                ),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: SizedBox(
                  width: 50,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: moniepointGrey,
                        size: 25,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
