import '../../res/import/import.dart';

class CustomButtonWithIconRight extends StatelessWidget {
  const CustomButtonWithIconRight({
    super.key,
    this.title,
    this.buttonColor,
    this.textColor,
    this.onPressed,
    this.borderColor,
    this.textSize,
    this.showIcon = false,
    this.icon,
    this.radius,
  });

  final String? title;
  final Color? buttonColor;
  final Color? textColor;
  final bool? showIcon;
  final double? textSize;
  final BorderRadius? radius;
  final Color? borderColor;
  final Widget? icon;

  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: (56),
        decoration: BoxDecoration(
            color: buttonColor,
            border: Border.all(color: borderColor ?? moniepointPrimaryColor),
            borderRadius: radius ?? BorderRadius.circular(31)),
        child: Center(
          child: Stack(
            children: [
              Align(
                alignment: FractionalOffset.center,
                child: Text(
                  title ?? '',
                  style: TextStyle(
                      fontFamily: "Helvetica Neue",
                      fontSize: textSize ?? 18,
                      fontWeight: FontWeight.bold,
                      color: textColor),
                ),
              ),
              // SizedBox(width: ,)
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Align(
                  alignment: FractionalOffset.centerRight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      icon ?? const SizedBox(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.onPressed,
      this.title,
      this.loadingState = false,
      this.buttonColor,
      this.textColor,
      this.buttonTextSize,
      this.buttonRadius,
      this.textSize,
      this.enabled = true});

  final VoidCallback? onPressed;
  final double? textSize;
  final String? title;
  final bool enabled;
  final bool loadingState;
  final Color? buttonColor;
  final Color? textColor;
  final double? buttonTextSize;
  final BorderRadius? buttonRadius;

  @override
  Widget build(BuildContext context) {
    final textWidget = Text(
      "$title",
      textAlign: TextAlign.center,
      maxLines: 1,
      // overflow: TextOverflow.ellipsis,
      style: TextStyle(
          fontFamily: "Helvetica Neue",
          fontSize: textSize ?? 16,
          fontWeight: FontWeight.w700,
          color: textColor ?? moniepointWhite),
    );
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: (56),
      child: loadingState
          ? const Center(
              child: CircularProgressIndicator(
                valueColor:
                    AlwaysStoppedAnimation<Color>(moniepointPrimaryColor),
              ),
            )
          : TextButton(
              onPressed: enabled ? onPressed : null,
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(enabled
                      ? buttonColor ?? moniepointPrimaryColor
                      : moniepointGrey),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius:
                          buttonRadius ?? BorderRadius.circular(31)))),
              child: textWidget,
            ),
    );
  }
}

class CustomButtonWithIcon extends StatelessWidget {
  const CustomButtonWithIcon({
    super.key,
    this.title,
    this.borderradius,
    this.buttonColor,
    this.textColor,
    this.onPressed,
    this.borderColor,
    this.textSize,
    this.showIcon = false,
    this.icon,
  });

  final String? title;
  final Color? buttonColor;
  final Color? textColor;
  final bool? showIcon;
  final double? textSize;
  final Color? borderColor;
  final Widget? icon;
  final double? borderradius;

  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: (56),
        decoration: BoxDecoration(
            color: buttonColor ?? moniepointPrimaryColor,
            border: Border.all(color: borderColor ?? moniepointPrimaryColor),
            borderRadius: borderradius == null
                ? BorderRadius.circular(31)
                : BorderRadius.circular(borderradius!)),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              icon ?? const SizedBox.shrink(),
              if (icon != null)
                const SizedBox(
                  width: 5,
                ),
              Text(
                title ?? '',
                style: TextStyle(
                  fontFamily: "Helvetica Neue",
                  fontSize: textSize ?? 16,
                  fontWeight: FontWeight.w700,
                  color: textColor ?? moniepointWhite,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
