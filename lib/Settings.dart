import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  static List<String> SettingsList = [
    "Storage",
    "Bandwidth",
    "Torrent",
    "Interface",
    "Network",
    "Power Management",
    "Scheduling",
    "Feeds",
    "About"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.builder(
          itemCount: SettingsList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(SettingsList.elementAt(index)),
            );
          }),
    );
  }
}
