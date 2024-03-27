import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/WelcomeScreens/Eligibility.dart/view/EligibilityScreen.dart';

import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/AppGradients.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class CarouselEntry {
  CarouselEntry({
    required this.imageUrl,
    required this.title,
    required this.description,
  });
  final String imageUrl;
  final String title;
  final String description;
}

class MarketingCarousel extends StatefulWidget {
  const MarketingCarousel({super.key});

  @override
  State<MarketingCarousel> createState() => MarketingCarouselState();
}

class MarketingCarouselState extends State<MarketingCarousel> {
  final List<CarouselEntry> entries = [
    CarouselEntry(
      imageUrl: 'assets/images/carousel_image_1.png',
      title: 'do you secretly crush on someone? We all do!',
      description: '''
do you fantasize your classmate, colleague or neighbor, but unable to express?''',
    ),
    CarouselEntry(
      imageUrl: 'assets/images/carousel_image_2.png',
      title: 'someone loves you & its a shame to not know who it is!',
      description:
          '''want to know who secretly admires you? or just enjoy the attention from your secret admirers?''',
    ),
    CarouselEntry(
      imageUrl: 'assets/images/carousel_image_3.png',
      title: "who'd take the first step? \nNone!",
      description:
          '''it is now simple and absolutely not embarrassing to take the first step. Sending a discreet crush message is easy-as! ''',
    ),
  ];
  Timer? _autoSlideTimer;
  int _current = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _startAutoSlide();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _autoSlideTimer?.cancel();
    super.dispose();
  }

  void _startAutoSlide() {
    _autoSlideTimer = Timer.periodic(const Duration(seconds: 5), (timer) {
      _slideToNextPage();
    });
  }

  void _slideToNextPage() {
    if (_current < entries.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
      _autoSlideTimer?.cancel();
    } else {
      _pageController.jumpToPage(0);
    }
  }

  void _slideToPrevPage() {
    if (_current > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
      _autoSlideTimer?.cancel();
    } else {
      _pageController.jumpToPage(entries.length - 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (details) => {
        if (details.primaryVelocity! > 0)
          {_slideToPrevPage()}
        else if (details.primaryVelocity! < 0)
          {_slideToNextPage()},
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.7,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          // color: Colors.transparent,
          gradient: AppGradients.mainGradient,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        child: Stack(
          children: [
            PageView.builder(
              controller: _pageController,
              itemCount: entries.length,
              onPageChanged: (index) {
                setState(() {
                  _current = index;
                });
              },
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                        image: DecorationImage(
                          image: AssetImage(entries[index].imageUrl),
                          fit: BoxFit.cover,
                          opacity: 0.4,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 25,
                            right: MediaQuery.of(context).size.width * 0.2,
                          ),
                          child: Text(
                            entries[index].title,
                            textScaleFactor: 1,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                  color: Colors.white,
                                ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 25,
                            right: MediaQuery.of(context).size.width * 0.2,
                            top: 20,
                          ),
                          child: Text(
                            entries[index].description,
                            textScaleFactor: 1,
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(
                                  color: Colors.white,
                                ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        50.verticalSpace,
                      ],
                    ),
                  ],
                );
              },
            ),
            Positioned(
              right: 20,
              top: 20,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EligibiltyScreen()));
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Text(
                  'Skip',
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  entries.length,
                  (index) => GestureDetector(
                    onTap: () => _pageController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    ),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _current == index
                            ? AppColors.mustard
                            : const Color.fromRGBO(255, 255, 255, 0.3),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
