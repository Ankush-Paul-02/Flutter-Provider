import 'package:flutter/material.dart';
import 'package:flutter_provider/providers/theme_changer_provider.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';

class DarkThemeScreen extends StatelessWidget {
  const DarkThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeChangerProvider = Provider.of<ThemeChangerProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Vx.blue500,
        title: 'Theme Provider'.text.semiBold.white.make().centered(),
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
            title: 'Light Mode'.text.semiBold.make(),
            value: ThemeMode.light,
            groupValue: themeChangerProvider.getThemeMode,
            onChanged: themeChangerProvider.setTheme,
          ),
          RadioListTile<ThemeMode>(
            title: 'Dark Mode'.text.semiBold.make(),
            value: ThemeMode.dark,
            groupValue: themeChangerProvider.getThemeMode,
            onChanged: themeChangerProvider.setTheme,
          ),
          RadioListTile<ThemeMode>(
            title: 'System Mode'.text.semiBold.make(),
            value: ThemeMode.system,
            groupValue: themeChangerProvider.getThemeMode,
            onChanged: themeChangerProvider.setTheme,
          ),
        ],
      ),
    );
  }
}
