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
  late final Animation<Offset> _voffsetAnimation;
  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
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
            height: 160,
            padding: const EdgeInsets.symmetric(horizontal: 16),
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
                          child: Text('Shipment history',
                              style: MoniePointTextStyle.heading2.copyWith(
                                color: moniepointWhite,
                              )),
                        ),
                      )
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
                                    margin: const EdgeInsets.only(left: 8),
                                    padding: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        color: moniepointSecondaryColor,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: const Text(
                                      '10',
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
                                    margin: const EdgeInsets.only(left: 8),
                                    padding: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        color: moniepointSecondaryColor,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: const Text(
                                      '10',
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
                                    margin: const EdgeInsets.only(left: 8),
                                    padding: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        color: moniepointSecondaryColor,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: const Text(
                                      '10',
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
                                    margin: const EdgeInsets.only(left: 8),
                                    padding: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        color: moniepointSecondaryColor,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: const Text(
                                      '10',
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
                                    margin: const EdgeInsets.only(left: 8),
                                    padding: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        color: moniepointSecondaryColor,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: const Text(
                                      '10',
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
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                const YMargin(20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    // key: HomeScreenKeys.trackingContainer,
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
                  ),
                ),
                const YMargin(20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
