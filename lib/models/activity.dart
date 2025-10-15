class Activity {
  final String activityType, dateTime, distance;

  Activity({
    required this.activityType,
    required this.dateTime,
    required this.distance,
  });

  static List<Activity> activities = [
    Activity(
      activityType: "Running",
      dateTime: "Ahir, 18:20",
      distance: "7,300 km",
    ),
    Activity(
      activityType: "Running",
      dateTime: "15 Set 2024, 21:45",
      distance: "6,550 km",
    ),
    Activity(
      activityType: "Running",
      dateTime: "10 Set 2024, 21:33",
      distance: "7,100 km",
    ),
  ];
}
