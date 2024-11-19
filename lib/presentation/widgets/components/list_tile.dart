import 'package:flutter/material.dart';
import 'package:easybook/core/utils/app_colors.dart';
import 'package:easybook/core/utils/app_routes.dart';
import 'package:easybook/core/utils/app_styles.dart';
import 'package:easybook/core/utils/contants.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(
            context,
            AppRoutes.productdetail,
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Hero(
              tag: 'bookImage', 
              child: Image.asset('assets/images/bookex.png'),
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                AppConstants.verticalSpacingLarge,
                Text(
                  'The Psychology of Money',
                  style: AppStyles.bodyMedium,
                ),
                Text(
                  'Marwan Ghandour',
                  style: AppStyles.microText,
                ),
                Text(
                  '4.0',
                  style: TextStyle(color: Colors.orange),
                ),
                Text(
                  '\$43.53',
                  style: AppStyles.baseTextStyle,
                ),
                SizedBox(
                  height: 70,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                AppConstants.verticalSpacingLarge,
                TextButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(AppColors.primaryLight),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Grab Now',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Learn more'),
                ),
                AppConstants.verticalSpacingMedium,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
