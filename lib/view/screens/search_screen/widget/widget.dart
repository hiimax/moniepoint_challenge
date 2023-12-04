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
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconWithBackgroundColor(
                backgroundColor: backgroundColor,
                child: icon,
              ),
              const XMargin(4),
              Column(
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
              )
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
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
                      Padding(
                        padding: const EdgeInsets.only(right: 2.0),
                        child: label2Icon ?? const SizedBox.shrink(),
                      ),
                      Text(
                        value2,
                        style: MoniePointTextStyle.subHeading.copyWith(
                          color: moniepointTextColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
