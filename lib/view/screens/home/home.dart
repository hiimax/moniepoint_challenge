import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_challenge/view/screens/home/widget/widget.dart';

import '../../../res/import/import.dart';
import 'home_screen_keys.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
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
      begin: const Offset(0.0, -0.2),
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
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: <Widget>[
            SlideTransition(
              position: _voffsetAnimation,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                color: moniepointPrimaryColor,
                child: SafeArea(
                  child: Column(
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            key: HomeScreenKeys.circleAvatar,
                            backgroundColor: moniepointWhite,
                            backgroundImage:
                                AssetImage('vicky-unsplash'.mobilejpg),
                          ),
                          const XMargin(8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                key: HomeScreenKeys.yourLocation,
                                children: [
                                  Icon(
                                    Icons.send,
                                    color: moniepointWhite,
                                    size: 12.sp,
                                  ),
                                  const XMargin(5),
                                  Text(
                                    'Your Location',
                                    style:
                                        MoniePointTextStyle.subHeading.copyWith(
                                      color: moniepointGrey,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                key: HomeScreenKeys.location,
                                children: [
                                  Text(
                                    'Wertheimer Illinois',
                                    style:
                                        MoniePointTextStyle.heading2.copyWith(
                                      color: moniepointWhite,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const XMargin(5),
                                  Icon(
                                    Icons.arrow_downward_outlined,
                                    color: moniepointWhite,
                                    size: 12.sp,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Spacer(),
                          const IconWithBackgroundColor(
                            backgroundColor: moniepointWhite,
                            key: HomeScreenKeys.notifications,
                            child: Icon(
                              Icons.notifications,
                              color: moniepointBlack,
                            ),
                          ),
                        ],
                      ),
                      const YMargin(16),
                      InkWell(
                        key: HomeScreenKeys.searchWidget,
                        onTap: () {
                          Navigator.pushNamed(context, RouteNames.searchScreen);
                        },
                        child: Hero(
                          tag: 'searchBar',
                          flightShuttleBuilder: (BuildContext flightContext,
                                  Animation<double> animation,
                                  HeroFlightDirection flightDirection,
                                  BuildContext fromHeroContext,
                                  BuildContext toHeroContext) =>
                              Material(child: toHeroContext.widget),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: CustomTextFormField(
                              key: HomeScreenKeys.searchTextFormField,
                              enabled: false,
                              hintText: 'Enter the receipt number',
                              hintStyle:
                                  MoniePointTextStyle.subHeading.copyWith(
                                color: moniepointGrey,
                                fontWeight: FontWeight.w500,
                              ),
                              fillColor: moniepointWhite,
                              borderRadius: 100,
                              prefixIcon: const Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  child: Icon(
                                    Icons.search,
                                    color: moniepointPrimaryColor,
                                  ),
                                ),
                              ),
                              suffixIcon: const Padding(
                                key: HomeScreenKeys
                                    .searchTextFormFieldSuffixIcon,
                                padding: EdgeInsets.only(right: 8.0),
                                child: IconWithBackgroundColor(
                                  backgroundColor: moniepointSecondaryColor,
                                  child: Icon(
                                    Icons.scanner,
                                    color: moniepointWhite,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      // TextField(
                      //   decoration: InputDecoration(

                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ),
            const YMargin(20),
            SlideTransition(
              position: _offsetAnimation,
              key: HomeScreenKeys.trackingText,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        Text(
                          'Tracking',
                          style: MoniePointTextStyle.heading2.copyWith(
                            color: moniepointPrimaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const YMargin(20),
                  Padding(
                    padding: REdgeInsets.symmetric(horizontal: 16.0),
                    child: Container(
                      key: HomeScreenKeys.trackingContainer,
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
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Shipment Number',
                                        style: MoniePointTextStyle.subHeading
                                            .copyWith(
                                          color: moniepointGrey,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        'NEJ20089934122231',
                                        style: MoniePointTextStyle
                                            .heading1WithPrimaryColor
                                            .copyWith(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 55,
                                    height: 55,
                                    child: Image.asset(
                                        'Forklift_lifting'.mobilepng,
                                        fit: BoxFit.cover),
                                  ),
                                ],
                              ),
                            ),
                            const Divider(),
                            const YMargin(10),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: TrackingWidget(
                                backgroundColor:
                                    moniepointSecondaryColor.withOpacity(0.5),
                                icon: SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: Image.asset('box'.mobilepng,
                                      fit: BoxFit.cover),
                                ),
                                label2Icon: const Icon(
                                  Icons.circle,
                                  size: 10,
                                  color: moniepointGreen,
                                ),
                                label1: 'Sender',
                                value1: 'Atlanta, 5243',
                                label2: 'Time',
                                value2: '2 day - 3 days',
                              ),
                            ),
                            const YMargin(15),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: TrackingWidget(
                                backgroundColor:
                                    moniepointGreen.withOpacity(0.5),
                                icon: SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: Image.asset('box'.mobilepng,
                                      fit: BoxFit.cover),
                                ),
                                label1: 'Receiver',
                                value1: 'Chicago, 5243',
                                label2: 'Status',
                                value2: 'Waiting to collect',
                              ),
                            ),
                            const YMargin(10),
                            const Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.add,
                                  color: moniepointSecondaryColor,
                                ),
                                Text(
                                  'Add Stop',
                                  style:
                                      MoniePointTextStyle.subHeading.copyWith(
                                    color: moniepointSecondaryColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const YMargin(20),
                  Padding(
                    padding: REdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        Text(
                          key: HomeScreenKeys.availableVehicles,
                          'Available vehicles',
                          style: MoniePointTextStyle.heading2.copyWith(
                            color: moniepointPrimaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const YMargin(20),
            Padding(
              padding: REdgeInsets.symmetric(horizontal: 16.0),
              key: HomeScreenKeys.availableVehiclesList,
              child: SizedBox(
                height: 180,
                child: AnimationLimiter(
                  child: ListView.builder(
                    cacheExtent: 1000,
                    itemCount: 5,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return AnimationConfiguration.staggeredList(
                        position: index,
                        duration: const Duration(milliseconds: 1000),
                        child: const SlideAnimation(
                          verticalOffset: 50.0,
                          child: FadeInAnimation(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 5),
                              child: HorizontalCard(),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
