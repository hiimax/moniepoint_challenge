import 'package:moniepoint_challenge/data/provider/test_provider.dart';
import 'package:moniepoint_challenge/view/screens/home/widget/widget.dart';
import 'package:moniepoint_challenge/view/screens/search_screen/search_screen_keys.dart';

import '../../../res/import/import.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  late final Animation<Offset> _offsetAnimation;
  late final Animation<Offset> _voffsetAnimation;
  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _offsetAnimation = Tween<Offset>(
      begin: const Offset(-2.0, 0),
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
    var test = Provider.of<TestProvider>(context, listen: false);
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 120,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
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
                      Flexible(
                        flex: 20,
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
                              enabled: true,
                              autofocus: true,
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
                                padding: EdgeInsets.only(right: 8.0),
                                child: IconWithBackgroundColor(
                                  backgroundColor: moniepointSecondaryColor,
                                  child: Icon(
                                    Icons.scanner,
                                    color: moniepointWhite,
                                  ),
                                ),
                              ),
                              onchanged: (val) {
                                test.searchThroughList(val!);
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // TextField(
                  //   decoration: InputDecoration(

                  //   ),
                  // ),
                ],
              ),
            ),
          ),
          const YMargin(
            30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Consumer<TestProvider>(
              builder: (context, test, _) {
                return SlideTransition(
                  position: _voffsetAnimation,
                  child: Container(
                    key: SearchScreenScreenKeys.shippingList,
                    width: MediaQuery.of(context).size.width,
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
                      ],
                    ),
                    child: ListView.builder(
                      itemCount: test.searchList.length,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        var value = test.searchList[index];
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const IconWithBackgroundColor(
                                    backgroundColor: moniepointPrimaryColor,
                                    child: Icon(
                                      Icons.local_shipping,
                                      color: moniepointWhite,
                                      size: 20,
                                    ),
                                  ),
                                  const XMargin(5),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        value.name,
                                        style: MoniePointTextStyle.heading3
                                            .copyWith(
                                          color: moniepointTextColor,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            value.ID,
                                            style: MoniePointTextStyle
                                                .subHeading
                                                .copyWith(
                                              color: moniepointGrey,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          const XMargin(5),
                                          const Icon(
                                            Icons.circle,
                                            color: moniepointGrey,
                                            size: 10,
                                          ),
                                          const XMargin(5),
                                          Text(
                                            value.sendindLocation,
                                            style: MoniePointTextStyle
                                                .subHeading
                                                .copyWith(
                                              color: moniepointGrey,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          const XMargin(5),
                                          const Icon(
                                            Icons.arrow_forward_ios,
                                            color: moniepointGrey,
                                            size: 10,
                                          ),
                                          const XMargin(5),
                                          Text(
                                            value.deliveryLocation,
                                            style: MoniePointTextStyle
                                                .subHeading
                                                .copyWith(
                                              color: moniepointGrey,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const Divider()
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
