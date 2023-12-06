import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_challenge/view/screens/shipment/widget/cancelled.dart';
import 'package:moniepoint_challenge/view/screens/shipment/widget/completed.dart';
import 'package:moniepoint_challenge/view/screens/shipment/widget/in_progress.dart';
import 'package:moniepoint_challenge/view/screens/shipment/widget/pending.dart';
import 'package:moniepoint_challenge/view/screens/shipment/widget/widgets.dart';

import '../../../res/import/import.dart';

class ShipmentScreen extends StatefulWidget {
  const ShipmentScreen({super.key});

  @override
  State<ShipmentScreen> createState() => _ShipmentScreenState();
}

class _ShipmentScreenState extends State<ShipmentScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final TabController _tabController;

  late final Animation<Offset> _offsetAnimation;
  late final Animation<Offset> _appBarTitlesetAnimation;
  late final Animation<Offset> _yOffsetAnimation;
  // late final Animation<Offset> _voffsetAnimation;
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
    // _voffsetAnimation = Tween<Offset>(
    //   begin: const Offset(0.0, 0.2),
    //   end: const Offset(0.0, 0.0),
    // ).animate(CurvedAnimation(
    //   parent: _controller,
    //   curve: Curves.easeInOut,
    // ));
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
            // height: 140,
            padding: REdgeInsets.fromLTRB(16, 10, 16, 0),
            color: moniepointPrimaryColor,
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: SlideTransition(
                          position: _offsetAnimation,
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: moniepointWhite,
                          ),
                        ),
                      ),
                      const Spacer(),
                      SlideTransition(
                        position: _yOffsetAnimation,
                        child: SlideTransition(
                          position: _appBarTitlesetAnimation,
                          child: Text('Shipment history',
                              style: MoniePointTextStyle.heading2.copyWith(
                                color: moniepointWhite,
                              )),
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                  const YMargin(20),
                  SlideTransition(
                    position: _yOffsetAnimation,
                    child: SlideTransition(
                      position: _appBarTitlesetAnimation,
                      child: TabBar(
                          controller: _tabController,
                          indicatorColor: moniepointSecondaryColor,
                          isScrollable: true,
                          tabs: [
                            Tab(
                              child: Row(
                                children: [
                                  const Text(
                                    'All',
                                  ),
                                  Container(
                                    margin: REdgeInsets.only(left: 8),
                                    padding: REdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        color: moniepointSecondaryColor,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: const Text(
                                      '12',
                                      style: TextStyle(
                                          color: moniepointWhite, fontSize: 12),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Tab(
                              child: Row(
                                children: [
                                  const Text('Completed'),
                                  Container(
                                    margin: REdgeInsets.only(left: 8),
                                    padding: REdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        color: moniepointSecondaryColor,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: const Text(
                                      '6',
                                      style: TextStyle(
                                          color: moniepointWhite, fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Tab(
                              child: Row(
                                children: [
                                  const Text('In progress'),
                                  Container(
                                    margin: REdgeInsets.only(left: 8),
                                    padding: REdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        color: moniepointSecondaryColor,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: const Text(
                                      '8',
                                      style: TextStyle(
                                          color: moniepointWhite, fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Tab(
                              child: Row(
                                children: [
                                  const Text('Pending'),
                                  Container(
                                    margin: REdgeInsets.only(left: 8),
                                    padding: REdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        color: moniepointSecondaryColor,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: const Text(
                                      '4',
                                      style: TextStyle(
                                          color: moniepointWhite, fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Tab(
                              child: Row(
                                children: [
                                  const Text('Cancelled'),
                                  Container(
                                    margin: REdgeInsets.only(left: 8),
                                    padding: REdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        color: moniepointSecondaryColor,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: const Text(
                                      '5',
                                      style: TextStyle(
                                          color: moniepointWhite, fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                    ),
                  )
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
              padding: REdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Text(
                    'Shipments',
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
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                AnimationLimiter(
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    cacheExtent: 1000,
                    itemCount: 12,
                    itemBuilder: (BuildContext context, int index) {
                      return AnimationConfiguration.staggeredList(
                        position: index,
                        duration: const Duration(milliseconds: 1000),
                        child: SlideAnimation(
                          verticalOffset: 50.0,
                          child: FadeInAnimation(
                            child: Padding(
                              padding: REdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 5),
                              child: ShipmentWidget(
                                status: index % 2 == 0
                                    ? ShipmentStatus.inProgress
                                    : index % 3 == 0
                                        ? ShipmentStatus.completed
                                        : index % 4 == 0
                                            ? ShipmentStatus.pending
                                            : ShipmentStatus.loading,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const Completed(),
                const InProgress(),
                const Pending(),
                const Cancelled()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
