import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:moniepoint_challenge/view/screens/home/widget/widget.dart';

import '../../../res/import/import.dart';
import 'home_screen_keys.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 150.0,
            floating: false,
            pinned: true,
            backgroundColor: moniepointPrimaryColor,
            leading: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        key: HomeScreenKeys.circleAvatar,
                        radius: 25,
                        backgroundColor: moniepointPrimaryColor,
                        backgroundImage: AssetImage('vicky-unsplash'.mobilejpg),
                      ),
                      const XMargin(10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            key: HomeScreenKeys.yourLocation,
                            children: [
                              const Icon(
                                Icons.send,
                                size: 12,
                                color: moniepointWhite,
                              ),
                              const XMargin(5),
                              Text(
                                'Your location',
                                style: MoniePointTextStyle.smallSubHeading
                                    .copyWith(color: moniepointWhite),
                              ),
                            ],
                          ),
                          const YMargin(6),
                          Row(
                            key: HomeScreenKeys.location,
                            children: [
                              Text(
                                'Wertheimer, Illinois',
                                style: MoniePointTextStyle.subHeading.copyWith(
                                    color: moniepointWhite,
                                    fontWeight: FontWeight.w600),
                              ),
                              const XMargin(5),
                              const Icon(
                                Icons.arrow_drop_down,
                                size: 12,
                                color: moniepointWhite,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const IconWithBackgroundColor(
                    key: HomeScreenKeys.notifications,
                    backgroundColor: moniepointWhite,
                    child: Icon(
                      Icons.notifications_none_sharp,
                      size: 20,
                      color: moniepointBlack,
                    ),
                  )
                ],
              ),
            ),
            leadingWidth: MediaQuery.of(context).size.width,
            flexibleSpace: FlexibleSpaceBar(
              title: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const SearchScreen();
                    }));
                    // Navigator.pushNamed(context, RouteNames.searchScreen);
                  },
                  child: Hero(
                    tag: 'searchBar',
                    child: Container(
                        key: HomeScreenKeys.searchWidget,
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
                                key: HomeScreenKeys.searchIcon,
                                Icons.search,
                                color: moniepointPrimaryColor,
                                size: 15,
                              ),
                            ),
                            Flexible(
                              child: CustomTextFormField(
                                key: HomeScreenKeys.searchTextFormField,
                                fillColor: moniepointTransparent,
                                enabled: false,
                                enabledBorderColor: moniepointTransparent,
                                errorBorderColor: moniepointTransparent,
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
                              padding:
                                  EdgeInsets.only(top: 3, bottom: 3, right: 3),
                              child: IconWithBackgroundColor(
                                key: HomeScreenKeys
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
              ),
              centerTitle: true,
            ),
          ),
          const SliverToBoxAdapter(
            child: YMargin(20),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Tracking',
                key: HomeScreenKeys.trackingText,
                style: MoniePointTextStyle.heading2.copyWith(
                  color: moniepointPrimaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: YMargin(20),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                key: HomeScreenKeys.trackingContainer,
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
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Shipment Number',
                                  style:
                                      MoniePointTextStyle.subHeading.copyWith(
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
                              child: Image.asset('Forklift_lifting'.mobilepng,
                                  fit: BoxFit.cover),
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      const YMargin(10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: TrackingWidget(
                          backgroundColor:
                              moniepointSecondaryColor.withOpacity(0.5),
                          icon: SizedBox(
                            width: 20,
                            height: 20,
                            child:
                                Image.asset('box'.mobilepng, fit: BoxFit.cover),
                          ),
                          label2Icon: Icon(
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
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: TrackingWidget(
                          backgroundColor: moniepointGreen.withOpacity(0.5),
                          icon: SizedBox(
                            width: 20,
                            height: 20,
                            child:
                                Image.asset('box'.mobilepng, fit: BoxFit.cover),
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
                          Icon(
                            Icons.add,
                            color: moniepointSecondaryColor,
                          ),
                          Text(
                            'Add Stop',
                            style: MoniePointTextStyle.subHeading.copyWith(
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
          ),
          const SliverToBoxAdapter(
            child: YMargin(20),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                key: HomeScreenKeys.availableVehicles,
                'Available vehicles',
                style: MoniePointTextStyle.heading2.copyWith(
                  color: moniepointPrimaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: YMargin(20),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: AnimationLimiter(
                key: HomeScreenKeys.availableVehiclesList,
                child: SizedBox(
                  height: 180,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: AnimationConfiguration.staggeredList(
                          position: index,
                          duration: const Duration(milliseconds: 375),
                          child: SlideAnimation(
                            verticalOffset: 50.0,
                            child: FadeInAnimation(
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
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10.0),
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment: FractionalOffset.centerRight,
                                        child: SizedBox(
                                          width: 150,
                                          height: 120,
                                          child: ImageAnimation(
                                            child: Image.asset('ship'.mobilepng,
                                                fit: BoxFit.contain),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Ocean fright',
                                              style: MoniePointTextStyle
                                                  .heading1WithPrimaryColor
                                                  .copyWith(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Text(
                                              'International',
                                              style: MoniePointTextStyle
                                                  .subHeading
                                                  .copyWith(
                                                color: moniepointGrey,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
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
