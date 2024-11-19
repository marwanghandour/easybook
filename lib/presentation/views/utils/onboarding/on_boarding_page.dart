import 'package:easybook/core/utils/app_styles.dart';
import 'package:easybook/core/utils/contants.dart';
import 'package:flutter/material.dart';
import '../../../../data/models/onboarding_model.dart';

class OnboardingPage extends StatelessWidget {
  final OnboardingData data;

  const OnboardingPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Padding(
      padding: AppConstants.screenPadding,
      child: Column(
        children: [
          AppConstants.verticalSpacingSmall,
          Image.asset(data.imagePath, fit: BoxFit.cover
         , height: size.height * 0.5,
          ),
          AppConstants.verticalSpacingLarge,
          Text(
            data.title,
            style: AppStyles.titleLarge,
            textAlign: TextAlign.center,
          ),
          AppConstants.verticalSpacingSmall,
          Text(
            data.description,
            style: AppStyles.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}