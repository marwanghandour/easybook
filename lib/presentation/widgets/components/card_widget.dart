import 'package:easybook/core/utils/app_colors.dart';
import 'package:easybook/presentation/widgets/components/custom_button.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/app_styles.dart';
import '../../../core/utils/contants.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
    height: 260,
    width: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset('assets/images/bookex.png'),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            AppConstants.verticalSpacingLarge,
            const Text('The Psychology of Money',
            style: AppStyles.smallHeader,
            ),
            const SizedBox(
              width: 200,
              child: Text(
                "The psychology of money is the study of our behavior with money. Success with money isn't about knowledge, IQ or how good you are at math. It's about behavior, and everyone is prone to certain behaviors over others.",
                 style: AppStyles.microText,
              ),
            ),
            AppConstants.verticalSpacingSmall,
            Row(
              children: [
                
                CustomButton(
                  elevation: 1,
                  text: 'Grab Now',
                  color: AppColors.primaryLight,
                  textcolor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16),


                  ),
                 onPressed: (){},
                 ),
                 AppConstants.verticalSpacingLarge,
                 CustomButton(
                  
                  text: 'Learn more', 
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 10
                  ),
                 borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16),


                  ),
                 onPressed: (){},
                  ),
              ],
            ),
            AppConstants.verticalSpacingLarge
            
          ],
        ),
      ],
    ),
    );
  }
}