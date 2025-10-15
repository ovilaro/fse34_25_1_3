import 'package:flutter/material.dart';
import 'package:fse34_25_1_3/styles/app_styles.dart';
import 'package:fse34_25_1_3/widgets/activity_card.dart';
import 'package:percent_indicator/flutter_percent_indicator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fitness Time"),
        leading: IconButton(
          onPressed: () => debugPrint("drawer button tapped"),
          icon: DrawerButtonIcon(),
        ),
        actions: [
          IconButton(
            onPressed: () => debugPrint("circle avatar tapped"),
            icon: CircleAvatar(
              foregroundImage: NetworkImage(
                "https://randomuser.me/api/portraits/women/44.jpg",
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18, top: 12, right: 18),
              child: Text("Hola Antònia,", style: AppStyles.bigTitle),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, top: 12, right: 18),
              child: Text(
                "Recorda beure aigua regularment al llarg del dia per mantenir el "
                "teu cos hidratat i millorar el teu rendiment físic i mental.",
                style: AppStyles.normalText,
              ),
            ),
            GestureDetector(
              onTap: () => debugPrint("more detail tapped"),
              child: Padding(
                padding: const EdgeInsets.only(left: 18, top: 12, right: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Text("Més detalls", style: AppStyles.linkText)],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, top: 24, right: 18),
              child: Text("Darreres activitats", style: AppStyles.mediumTitle),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, top: 6, right: 18),
              child: Divider(height: 2, color: AppStyles.darkGreyColor),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, top: 6, right: 18),
              child: Column(
                children: [
                  ActivityCard(
                    activityType: "Running",
                    dateTime: "Ahir, 18:20",
                    distance: "7,300 km",
                  ),
                  ActivityCard(
                    activityType: "Running",
                    dateTime: "15 Set 2024, 21:45",
                    distance: "6,550 km",
                  ),
                  ActivityCard(
                    activityType: "Running",
                    dateTime: "10 Set 2024, 21:33",
                    distance: "7,100 km",
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: CircularPercentIndicator(
                  radius: 45,
                  lineWidth: 10,
                  percent: 0.65,
                  center: Text("65%", style: AppStyles.percentText),
                  progressColor: AppStyles.blueColor,
                  circularStrokeCap: CircularStrokeCap.round,
                  animation: true,
                  footer: Text("Objectiu Mensual", style: AppStyles.normalText),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: AppStyles.darkGreyColor, width: 0.1),
          ),
        ),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inici"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Cercar"),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Botiga",
            ),
          ],
        ),
      ),
    );
  }
}
