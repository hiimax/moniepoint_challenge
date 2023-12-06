import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../res/import/import.dart';

class IconWithBackgroundColor extends StatelessWidget {
  const IconWithBackgroundColor(
      {super.key, required this.backgroundColor, required this.child});
  final Color backgroundColor;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
      ),
      child: Center(child: child),
    );
  }
}

class TrackingWidget extends StatelessWidget {
  const TrackingWidget({
    super.key,
    required this.backgroundColor,
    required this.icon,
    this.label2Icon,
    required this.label1,
    required this.value1,
    required this.label2,
    required this.value2,
  });
  final Color backgroundColor;
  final Widget icon;
  final Widget? label2Icon;
  final String label1;
  final String value1;
  final String label2;
  final String value2;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: IconWithBackgroundColor(
                  backgroundColor: backgroundColor,
                  child: icon,
                ),
              ),
              Flexible(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      label1,
                      style: MoniePointTextStyle.subHeading.copyWith(
                        color: moniepointGrey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      value1,
                      style: MoniePointTextStyle.subHeading.copyWith(
                        color: moniepointTextColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label2,
                style: MoniePointTextStyle.subHeading.copyWith(
                  color: moniepointGrey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 2.0),
                      child: label2Icon ?? const SizedBox.shrink(),
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: Text(
                      value2,
                      style: MoniePointTextStyle.subHeading.copyWith(
                        color: moniepointTextColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class HorizontalCard extends StatefulWidget {
  const HorizontalCard({
    super.key,
  });

  @override
  State<HorizontalCard> createState() => _HorizontalCardState();
}

class _HorizontalCardState extends State<HorizontalCard>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  late final Animation<Offset> _offsetAnimation;
  late final Animation<Offset> _yOffsetAnimation;
  late final Animation<Offset> _containerOffsetAnimation;
  late final Animation<Offset> _textOffsetAnimation;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    _offsetAnimation = Tween<Offset>(
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
    _containerOffsetAnimation = Tween<Offset>(
      begin: const Offset(0.5, 0),
      end: const Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
    _textOffsetAnimation = Tween<Offset>(
      begin: const Offset(0.1, 0.0),
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
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: SlideTransition(
        position: _containerOffsetAnimation,
        child: Container(
          height: 120.h,
          width: 170.w,
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
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: SizedBox(
                    width: 150.w,
                    height: 120.h,
                    child: SlideTransition(
                      position: _yOffsetAnimation,
                      child: SlideTransition(
                        position: _offsetAnimation,
                        child:
                            Image.asset('ship'.mobilepng, fit: BoxFit.contain),
                      ),
                    ),
                  ),
                ),
                SlideTransition(
                  position: _textOffsetAnimation,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ocean fright',
                          style: MoniePointTextStyle.heading1WithPrimaryColor
                              .copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'International',
                          style: MoniePointTextStyle.subHeading.copyWith(
                            color: moniepointGrey,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
