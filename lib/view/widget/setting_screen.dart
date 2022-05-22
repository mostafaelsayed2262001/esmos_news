import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool trueValue = true;
  @override
  Widget build(BuildContext context) {

    return  SettingsList(
      sections: [
        SettingsSection(
          title: const Text('Common'),
          tiles: <SettingsTile>[
            SettingsTile.navigation(
              leading: const Icon(Icons.language),
              title: const Text('Language'),
              value: const Text('English'),
            ),

            SettingsTile.switchTile(
              onToggle: (value) {
                setState(() {
                  trueValue=value;
                });
              },
              initialValue: trueValue ,
              leading: Icon(Icons.dark_mode_outlined),
              title: Text('Dark mode'),
            ),

          ],
        ),
      ],
    );
  }
}
