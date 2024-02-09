import 'package:flutter/material.dart';
import 'package:islami_c10_thursday/ui/home/settings_tab/language_bottom_sheet.dart';
import 'package:islami_c10_thursday/ui/home/settings_tab/theme_bottom_sheet.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Theme',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(18),
              decoration: BoxDecoration(
                //color: Colors.black,
                borderRadius: BorderRadius.circular(22),
                border: Border.all(
                  color: Color(0xFFB7935F),
                  width: 3,
                ),
              ),
              child: Text('Light',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Language',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(18),
              decoration: BoxDecoration(
                //color: Colors.black,
                borderRadius: BorderRadius.circular(22),
                border: Border.all(
                  color: Color(0xFFB7935F),
                  width: 3,
                ),
              ),
              child: Text('English',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            ),
          ),
        ],
      ),
    );
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => ThemeBottomSheet(),
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => LanguageBottomSheet(),
    );
  }
}
