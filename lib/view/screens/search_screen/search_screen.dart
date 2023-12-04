import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:moniepoint_challenge/view/screens/home/widget/widget.dart';
import 'package:moniepoint_challenge/view/screens/search_screen/search_screen_keys.dart';

import '../../../res/import/import.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 100.0,
            floating: false,
            pinned: true,
            backgroundColor: moniepointPrimaryColor,
            leading: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(
                      key: SearchScreenScreenKeys.backButton,
                      Icons.arrow_back_ios,
                      color: moniepointWhite,
                      size: 15,
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Hero(
                        tag: 'searchBar',
                        child: Container(
                            key: SearchScreenScreenKeys.searchWidget,
                            height: 35,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: moniepointWhite,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Icon(
                                    key: SearchScreenScreenKeys.searchIcon,
                                    Icons.search,
                                    color: moniepointPrimaryColor,
                                    size: 15,
                                  ),
                                ),
                                Flexible(
                                  child: CustomTextFormField(
                                    key: SearchScreenScreenKeys
                                        .searchTextFormField,
                                    fillColor: moniepointTransparent,
                                    enabledBorderColor: moniepointTransparent,
                                    errorBorderColor: moniepointTransparent,
                                    autofocus: true,
                                    focusedBorderColor: moniepointTransparent,
                                    textStyle: MoniePointTextStyle.subHeading
                                        .copyWith(fontSize: 12),
                                    hintStyle: MoniePointTextStyle.subHeading
                                        .copyWith(
                                            fontSize: 12,
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.w300),
                                    hintText: 'Enter the receipt number ...',
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      top: 3, bottom: 3, right: 3),
                                  child: IconWithBackgroundColor(
                                    key: SearchScreenScreenKeys
                                        .searchTextFormFieldSuffixIcon,
                                    backgroundColor: moniepointSecondaryColor,
                                    child: Icon(
                                      Icons.business_center_rounded,
                                      size: 20,
                                      color: moniepointWhite,
                                    ),
                                  ),
                                )
                              ],
                            )),
                      ),
                    ),
                  )
                ],
              ),
            ),
            leadingWidth: MediaQuery.of(context).size.width,
          ),
          const SliverToBoxAdapter(
            child: YMargin(20),
          ),
          SliverToBoxAdapter(
            child: Padding(
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
                        offset: Offset(0, 3),
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
          ),
        ],
      ),
    );
  }
}
