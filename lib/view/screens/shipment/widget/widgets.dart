import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../res/import/import.dart';

class ShipmentWidget extends StatelessWidget {
  const ShipmentWidget({
    super.key,
    required this.status,
  });
  final ShipmentStatus status;

  @override
  Widget build(BuildContext context) {
    return Container(
        // key: HomeScreenKeys.trackingContainer,
        decoration: BoxDecoration(
            color: moniepointWhite,
            borderRadius: BorderRadius.circular(15.r),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 3),
                color: moniepointBlack.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 0,
              )
            ]),
        child: Padding(
          padding: REdgeInsets.symmetric(horizontal: 16.0, vertical: 15),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 130.w,
                    decoration: BoxDecoration(
                        color: moniepointGrey.withOpacity(0.3),
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
                      padding: REdgeInsets.all(2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                              status == ShipmentStatus.inProgress
                                  ? Icons.cached_outlined
                                  : status == ShipmentStatus.pending
                                      ? Icons.pending_outlined
                                      : status == ShipmentStatus.loading
                                          ? Icons.sync_outlined
                                          : Icons.check_circle_outline,
                              color: status == ShipmentStatus.inProgress
                                  ? moniepointGreen
                                  : status == ShipmentStatus.pending
                                      ? moniepointSecondaryColor
                                      : status == ShipmentStatus.loading
                                          ? moniepointPriceColor
                                          : moniepointPrimaryColor),
                          Text(
                            status == ShipmentStatus.inProgress
                                ? 'in-progress'
                                : status == ShipmentStatus.pending
                                    ? 'pending'
                                    : status == ShipmentStatus.loading
                                        ? 'loading'
                                        : 'completed',
                            style: MoniePointTextStyle.subHeading.copyWith(
                                color: status == ShipmentStatus.inProgress
                                    ? moniepointGreen
                                    : status == ShipmentStatus.pending
                                        ? moniepointSecondaryColor
                                        : status == ShipmentStatus.loading
                                            ? moniepointPriceColor
                                            : moniepointPrimaryColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const YMargin(10),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Arrive today!',
                        style: MoniePointTextStyle.heading1.copyWith(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                            color: moniepointBlack),
                      ),
                      const YMargin(5),
                      Text(
                        'Your delivery,#NE3432792T9902 \n fromAtlanta, is arriving today',
                        style: MoniePointTextStyle.subHeading.copyWith(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: moniepointGrey),
                      ),
                      const YMargin(5),
                      Row(
                        children: [
                          Text(
                            '\$6500 USD',
                            style: MoniePointTextStyle.subHeading.copyWith(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: moniepointPrimaryColor),
                          ),
                          const XMargin(5),
                          Icon(
                            Icons.circle,
                            size: 12.sp,
                            color: moniepointGrey,
                          ),
                          const XMargin(5),
                          Text(
                            'Sep 20,2023',
                            style: MoniePointTextStyle.subHeading.copyWith(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: moniepointPrimaryColor),
                          ),
                        ],
                      )
                    ],
                  ),
                  const Spacer(),
                  SizedBox(
                      width: 80.w,
                      height: 80.h,
                      child: Image.asset(
                        'cardboard_box'.mobilepng,
                        fit: BoxFit.contain,
                      ))
                ],
              )
            ],
          ),
        ));
  }
}

enum ShipmentStatus { inProgress, pending, loading, completed }
