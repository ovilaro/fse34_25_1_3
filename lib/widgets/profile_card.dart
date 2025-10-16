import 'package:flutter/material.dart';
import 'package:fse34_25_1_3/styles/app_styles.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
    required this.iconData,
    required this.label,
    required this.value,
  });

  final IconData iconData;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppStyles.purpleColor,
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Icon(iconData),
            Text(
              label,
              style: AppStyles.normalText.copyWith(color: Colors.black),
            ),
            Text(
              value,
              style: AppStyles.activityTypeText.copyWith(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
