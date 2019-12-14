import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:joshvocal_dev/config/strings.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              bottom: 8,
            ),
            child: Text(
              'Let\'s Connect ☕️',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            child: Wrap(
              spacing: 16.0,
              children: <Widget>[
                IconButton(
                  icon: Icon(FontAwesomeIcons.github),
                  onPressed: () => launch(kGitHubUrl),
                ),
                IconButton(
                  icon: Icon(FontAwesomeIcons.linkedinIn),
                  onPressed: () => launch(kLinkedInUrl),
                ),
                IconButton(
                  icon: Icon(FontAwesomeIcons.envelope),
                  onPressed: () => launch(kEmailUrl),
                ),
                IconButton(
                  icon: Icon(FontAwesomeIcons.fileAlt),
                ),
                IconButton(
                  icon: Icon(FontAwesomeIcons.mediumM),
                ),
              ],
            ),
            padding: EdgeInsets.only(
              bottom: 16,
            ),
          ),
          Text('Made with 🎯and 💙'),
        ],
      ),
    );
  }
}
