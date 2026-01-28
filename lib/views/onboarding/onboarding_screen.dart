import 'package:flutter/material.dart';
import 'package:rental_application/models/onboarding_content.dart';
import 'package:rental_application/views/onboarding/widgets/Onboarding_page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  final List<OnboardingContent> _contents = [
    OnboardingContent(
      description:
          'Discover your perfect home from our vast collection of properties',
      image: 'assets/images/onboarding/onboarding1.png',
      title: 'Find Ferfect Home',
    ),
    OnboardingContent(
      description: 'Book your desired property with just a few taps',
      image: 'assets/images/onboarding/onboarding1.png',
      title: 'Find Ferfect Home',
    ),
    OnboardingContent(
      description: 'Quick and hassle-free move-in process for your comfort',
      image: 'assets/images/onboarding/onboarding2.png',
      title: 'Move In Quickly',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Onboarding Screen')),
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _contents.length,
            onPageChanged: (index) {
              setState(() => _currentPage = index);
            },
            itemBuilder: (context, index) {
              return OnboardingPage(content: _contents[index]);
            },
          ),
        ],
      ),
    );
  }
}
