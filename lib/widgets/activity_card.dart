import 'package:flutter/material.dart';
import 'package:fse34_25_1_3/models/activity.dart';
import 'package:fse34_25_1_3/styles/app_styles.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({super.key, required this.activity});

  final Activity activity;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          // TODO: show activity detail
          debugPrint(
            "card pressed: ${activity.activityType} ${activity.dateTime} ${activity.distance}",
          );
        },
        child: SizedBox(
          width: null,
          height: 60,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.run_circle_outlined,
                      size: 45,
                      color: AppStyles.purpleColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            activity.activityType,
                            style: AppStyles.activityTypeText,
                          ),
                          Text(
                            activity.dateTime,
                            style: AppStyles.dateTimeText,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Text(activity.distance, style: AppStyles.distanceText),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
