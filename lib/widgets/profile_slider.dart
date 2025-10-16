import 'package:flutter/material.dart';
import 'package:fse34_25_1_3/styles/app_styles.dart';

class ProfileSlider extends StatelessWidget {
  const ProfileSlider({
    super.key,
    required this.labelText,
    required this.valueText,
    required this.value,
  });

  final String labelText, valueText;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(labelText, style: AppStyles.normalText),
          Slider(
            value: value,
            activeColor: AppStyles.purpleColor,
            onChanged: (value) => {},
          ),
          Text(valueText, style: AppStyles.normalText),
        ],
      ),
    );
  }
}
