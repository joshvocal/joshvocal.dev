import 'package:flutter/material.dart';
import 'package:joshvocal_dev/providers/theme_notifier.dart';
import 'package:joshvocal_dev/resources/themes.dart';
import 'package:provider/provider.dart';

class AppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  AppBarWidget({@required this.title});

  final String title;

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  _AppBarWidgetState createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  bool _darkTheme;

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    _darkTheme = (themeNotifier.getTheme() == darkTheme);

    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Text(this.widget.title),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            _darkTheme ? Icons.wb_sunny : Icons.wb_incandescent,
          ),
          tooltip: _darkTheme ? 'Light Theme' : 'Dark Theme',
          onPressed: () {
            themeNotifier.setTheme(lightTheme);
            themeNotifier.onThemeChanged(!_darkTheme, themeNotifier);
          },
        ),
      ],
    );
  }
}
