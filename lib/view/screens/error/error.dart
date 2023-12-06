import '../../../res/import/import.dart';

class CustomError extends StatelessWidget {
  final FlutterErrorDetails errorDetails;

  const CustomError({
    super.key,
    required this.errorDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              '404.png'.mobilepng,
              scale: 1.5,
            ),
            const YMargin(12),
            Text(
              'Oopse!',
              textAlign: TextAlign.center,
              style: MoniePointTextStyle.heading1,
            ),
            const YMargin(12),
            Text(
              ' Something went wrong!',
              textAlign: TextAlign.center,
              style: MoniePointTextStyle.heading1,
            ),
            const YMargin(12),
            Text(
              kDebugMode
                  ? errorDetails.summary.toString()
                  : 'Oups! Something went wrong!',
              textAlign: TextAlign.center,
              style: MoniePointTextStyle.errorSubText,
            ),
            const YMargin(12),
          ],
        ),
      ),
    );
  }
}
