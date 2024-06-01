part of 'text_with_button_and_indicator.dart';

class MainText extends StatelessWidget {
  const MainText({super.key,
     required this.currentTitle, required this.currentSubTitle,
  });

  final String currentTitle;
  final String currentSubTitle;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            currentTitle,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
            ),
            child: Text(
              currentSubTitle,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color:Colors.white.withOpacity(0.7),
                height: 1.4,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
