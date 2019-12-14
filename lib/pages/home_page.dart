import 'package:flutter/material.dart';
import 'package:joshvocal_dev/config/themes.dart';
import 'package:joshvocal_dev/providers/theme_notifier.dart';
import 'package:joshvocal_dev/widgets/app_bar_widget.dart';
import 'package:joshvocal_dev/widgets/footer_widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _darkTheme;

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    _darkTheme = (themeNotifier.getTheme() == darkTheme);

    return Scaffold(
      appBar: AppBarWidget(
        widget.title,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Under Construction 👷‍',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: FooterWidget(),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          themeNotifier.setTheme(lightTheme);
          themeNotifier.onThemeChanged(!_darkTheme, themeNotifier);
        },
        tooltip: _darkTheme ? 'Light Theme' : 'Dark Theme',
        child: Icon(
          _darkTheme ? Icons.wb_sunny : Icons.wb_incandescent,
        ),
      ),
    );
  }
}
