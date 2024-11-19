import 'package:easybook/core/utils/app_strings.dart';

class OnboardingData {
  final String imagePath;
  final String title;
  final String description;

  const OnboardingData({
    required this.imagePath,
    required this.title,
    required this.description,
  });
}

const List<OnboardingData> onboardingData = [
  OnboardingData(
    imagePath: AppStrings.onboarding,
    title: 'Only Books Can Help You',
    description: 'Books can help you to increase your knowledge and become more successfully.',
  ),
  OnboardingData(
    imagePath: AppStrings.onboarding2,
    title: 'Learn Smartly',
    description: 'It’s 2024 and it’s time to learn every quickly and smartly. All books are storage in cloud and you can access all of them from your laptop or PC. ',
  ),
  OnboardingData(
    imagePath: 'assets/images/ra0ph_512.webp',
    title: 'Book Has Power To Chnage Everything',
    description: 'We have true friend in our life and the books is that. Book has power to chnage yourself and make you more valueable.',
  ),
];
