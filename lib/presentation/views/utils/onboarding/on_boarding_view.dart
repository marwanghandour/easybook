import 'package:easybook/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_routes.dart';
import '../../../../data/models/onboarding_model.dart';
import '../../../blocs/onboarding/onboarding_bloc.dart';
import '../../../blocs/onboarding/onboarding_event.dart';
import '../../../blocs/onboarding/onboarding_state.dart';
import '../../../widgets/components/custom_button.dart';
import 'on_boarding_page.dart';

class OnboardingView extends StatelessWidget {
  final PageController _controller = PageController();

  OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SafeArea(child: Image.asset(AppStrings.appLogo)),
        centerTitle: true,
        toolbarHeight: 50,
      ),
      body: Stack(
        children: [
          BlocBuilder<OnboardingBloc, OnboardingState>(
            builder: (context, state) {
              return PageView.builder(
                physics: const BouncingScrollPhysics(),
                controller: _controller,
                onPageChanged: (index) {
                  context
                      .read<OnboardingBloc>()
                      .add(PageChangedEvent(index));
                },
                itemCount: onboardingData.length,
                itemBuilder: (context, index) {
                  return OnboardingPage(data: onboardingData[index]);
                },
              );
            },
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: BlocBuilder<OnboardingBloc, OnboardingState>(
              builder: (context, state) {
                int currentPage = (state is OnboardingPageState)
                    ? state.currentPage
                    : 0;
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (currentPage != onboardingData.length - 1)
                      CustomButton(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        onPressed: () {
                          _controller.jumpToPage(onboardingData.length - 1);
                        },
                        text: 'SKIP',
                      ),
                    if (currentPage == onboardingData.length - 1)
                      CustomButton(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(context, 
                          AppRoutes.main, 
                          (Route<dynamic> route) => false,
                          );
                        },
                        text: 'GET STARTED',
                      ),
                    Row(
                      children: List.generate(onboardingData.length, (index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: currentPage == index
                                ? AppColors.primaryLight
                                : Colors.grey,
                            shape: BoxShape.circle,
                          ),
                        );
                      }),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}