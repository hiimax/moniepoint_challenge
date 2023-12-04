import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: AnimationLimiter(
              key: SearchScreenScreenKeys.shippingList,
              child: Container(
                height: 120,
                width: 170,
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
                  itemCount: 1,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: AnimationConfiguration.staggeredList(
                        position: index,
                        duration: const Duration(milliseconds: 375),
                        child: const SlideAnimation(
                          verticalOffset: 50.0,
                          child: FadeInAnimation(
                            child: Column(
                              children: [
                                Row(
                                  children: [],
                                ),
                                Divider()
                              ],
                            ),
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
    );
  }
}
