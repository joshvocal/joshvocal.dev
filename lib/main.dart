import 'package:flutter/material.dart';
import 'package:joshvocal_dev/providers/theme_notifier.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'config/themes.dart';
import 'pages/home_page.dart';

void main() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  bool isDarkMode = sharedPreferences.getBool('isDarkMode') ?? true;

  runApp(
    ChangeNotifierProvider<ThemeNotifier>(
      create: (_) => ThemeNotifier(
        isDarkMode ? darkTheme : lightTheme,
      ),
      child: WebsiteApp(),
    ),
  );
}

class WebsiteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: themeNotifier.getTheme(),
      home: HomePage(title: 'Josh Vocal'),
    );
  }
}
