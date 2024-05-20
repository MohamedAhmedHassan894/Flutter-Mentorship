import 'package:flutter/material.dart';
import 'package:flutter_mentorship/features/on_boarding/data/model/page_model.dart';
import 'package:flutter_mentorship/features/on_boarding/ui/widgets/text_with_button_and_indicator/text_with_button_and_indicator.dart';

import '../../../../core/widgets/background_image.dart';
import 'container_with_image.dart';

class OnBoardingScreenBody extends StatefulWidget {
  const OnBoardingScreenBody({
    super.key,
  });

  @override
  State<OnBoardingScreenBody> createState() => _OnBoardingScreenBodyState();
}

class _OnBoardingScreenBodyState extends State<OnBoardingScreenBody> {
  late final PageController _controller = PageController();

  List<PageModel> pagesDetails = [
    PageModel(
      title: 'Reach for the Stars',
      subTitle: 'Explore the cosmos with SpaceX, a leader in space exploration. We\'re dedicated to pushing the boundaries of human achievement and making space travel more accessible',
      color: Colors.redAccent.shade100,
      progress: Tween<double>(
        begin: 0,
        end: 0.5,
      ),
    ),
    PageModel(
      title: 'Powerful Propulsion',
      subTitle: ' Our innovative rockets, like the Falcon 9 and Starship, deliver unmatched reliability and performance. Witness the future of space travel right here',
      color: Colors.red,
      progress: Tween<double>(
        begin: 0.5,
        end: 0.75,
      ),
    ),
    PageModel(
      title: 'Reimagine Spacecraft',
      subTitle: ' The Dragon spacecraft is a marvel of engineering, designed for both cargo and crew missions. Discover its versatility and cutting-edge technology',
      color:  Colors.green,
      progress: Tween<double>(
        begin: 0.75,
        end: 1,
      ),
    ),
  ];
  int _currentIndex = 0;
  Color _currentColor = Colors.redAccent.shade100;

  @override
  void initState() {
    _controller.addListener(_onUpdatedIndex);
    super.initState();
  }

  @override
  void dispose() {
    _controller
      ..removeListener(_onUpdatedIndex)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackGroundImage(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 3,
                child: PageViewBuilder(
                  controller: _controller,
                ),
              ),
              const SizedBox(
                height: 42,
              ),
              Expanded(
                flex: 2,
                child: TextWithButtonAndIndicator(
                  progress: pagesDetails[_currentIndex].progress,
                  currentTitle: pagesDetails[_currentIndex].title,
                  currentSubTitle: pagesDetails[_currentIndex].subTitle,
                  currentIndex: _currentIndex,
                  currentColor: _currentColor,
                  controller: _controller,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _onUpdatedIndex() {
    final currentIndex = _controller.page?.round() ?? 0;
    if (currentIndex != _currentIndex) {
      _currentIndex = currentIndex;
      _currentColor = pagesDetails[currentIndex].color;
      setState(() {});
    }
  }
}
