import 'package:flutter/material.dart';
import 'package:fse34_25_1_3/styles/app_styles.dart';
import 'package:fse34_25_1_3/widgets/profile_card.dart';
import 'package:fse34_25_1_3/widgets/profile_slider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Perfil")),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Hero(
                  tag: "avatar",
                  child: CircleAvatar(
                    radius: 100,
                    foregroundImage: NetworkImage(
                      "https://randomuser.me/api/portraits/women/44.jpg",
                    ),
                  ),
                ),
              ),
              Text("Antònia Font", style: AppStyles.bigTitle),
              Text(
                "des del 20 d'abril del 2022",
                style: AppStyles.dateTimeText.copyWith(
                  fontStyle: FontStyle.normal,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 22.0, bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProfileCard(
                      iconData: Icons.alarm,
                      label: "Time",
                      value: "2h 45'",
                    ),
                    ProfileCard(
                      iconData: Icons.location_on,
                      label: "Km",
                      value: "212,4",
                    ),
                    ProfileCard(
                      iconData: Icons.home,
                      label: "Activities",
                      value: "42",
                    ),
                  ],
                ),
              ),
              ProfileSlider(
                labelText: "Height",
                valueText: "150 cm",
                value: 0.4,
              ),
              ProfileSlider(
                labelText: "Weight",
                valueText: "55 kg",
                value: 0.3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
