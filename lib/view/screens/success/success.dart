// ignore_for_file: unused_field

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../res/import/import.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({super.key});

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final TabController _tabController;
  late final Animation<Offset> _offsetAnimation;
  late final Animation<Size> _animation;
  late final Animation<double> _amountAnimation;
  late final AnimationController _animationController;
  late final AnimationController _amountController;
  final int _amount = 0;

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
      curve: Curves.decelerate,
    ));

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _amountController = AnimationController(
      duration: const Duration(milliseconds: 700),
      vsync: this,
    );
    _animation = Tween<Size>(
      begin: const Size(140, 140),
      end: const Size(200, 200),
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
    _amountAnimation = Tween<double>(
      begin: 100,
      end: 6500,
    ).animate(_amountController);
    _controller.forward();
    _animationController.forward();
    _amountController.forward();
    _animationController.addListener(() {
      setState(() {});
    });
    _amountController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _tabController.dispose();
    _animationController.removeListener(() {});
    _animationController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SlideTransition(
                    position: _offsetAnimation,
                    child: Padding(
                      padding: REdgeInsets.fromLTRB(16, 0, 16, 0),
                      child: Text(
                        'MoveMate',
                        style: MoniePointTextStyle.heading2.copyWith(
                            color: moniepointPrimaryColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 35.sp),
                      ),
                    ),
                  ),
                  SlideTransition(
                    position: _offsetAnimation,
                    child: Padding(
                        padding: REdgeInsets.fromLTRB(16, 0, 16, 0),
                        child: SizedBox(
                          width: 70.w,
                          height: 70.h,
                          child: Image.asset(
                            'Forklift_lifting'.mobilepng,
                            fit: BoxFit.contain,
                          ),
                        )),
                  ),
                ],
              ),
              const YMargin(10),
              SlideTransition(
                position: _offsetAnimation,
                child: Padding(
                  padding: REdgeInsets.fromLTRB(16, 0, 16, 0),
                  child: AnimatedContainer(
                    width: _animation.value.width,
                    height: _animation.value.height,
                    duration: const Duration(milliseconds: 500),
                    child: Image.asset(
                      'cardboard_box'.mobilepng,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const YMargin(10),
              SlideTransition(
                position: _offsetAnimation,
                child: Padding(
                  padding: REdgeInsets.fromLTRB(16, 0, 16, 0),
                  child: Text(
                    'Total Estimated Amount',
                    style: MoniePointTextStyle.subHeading.copyWith(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                        color: moniepointTextColor),
                  ),
                ),
              ),
              const YMargin(10),
              Padding(
                padding: REdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Text(
                  '\$${_amountAnimation.value.toStringAsFixed(0)} USD',
                  style: MoniePointTextStyle.subHeading.copyWith(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400,
                      color: moniepointGreen),
                ),
              ),
              const YMargin(10),
              Padding(
                padding: REdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Text(
                  'this amount is estimated this will vary \n if you chnge your location or weight',
                  style: MoniePointTextStyle.subHeading.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: moniepointGrey),
                ),
              ),
              const YMargin(30),
              Padding(
                padding: REdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
                child: CustomButton(
                  title: 'Calculate',
                  buttonColor: moniepointSecondaryColor,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
