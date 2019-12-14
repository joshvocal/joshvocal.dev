import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CurrentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
            ),
            child: Text(
              'Currently',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            leading: Container(
              width: 24,
              alignment: Alignment.center,
              child: Icon(FontAwesomeIcons.search, size: 24),
            ),
            title: Text('Learning'),
            subtitle: Text('Flutter'),
          ),
          ListTile(
            leading: Container(
              width: 24,
              alignment: Alignment.center,
              child: Icon(FontAwesomeIcons.music, size: 24),
            ),
            title: Text('Listening'),
            subtitle: Text('Yvette Young'),
          ),
          ListTile(
            leading: Container(
              width: 24,
              alignment: Alignment.center,
              child: Icon(FontAwesomeIcons.video, size: 24),
            ),
            title: Text('Watching'),
            subtitle: Text('Nothing'),
          ),
        ],
      ),
    );
  }
}
