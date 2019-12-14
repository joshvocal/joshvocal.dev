import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CurrentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: Text(
              'Current Interests',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Container(
                width: 40,
                alignment: Alignment.center,
                child: Text(
                  '🎯',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              title: Text('Learning'),
              subtitle: Text('Flutter'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Container(
                width: 40,
                alignment: Alignment.center,
                child: Text(
                  '🎸',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              title: Text('Listening'),
              subtitle: Text('Yvette Young'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Container(
                width: 40,
                alignment: Alignment.center,
                child: Text(
                  '👾',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              title: Text('Playing'),
              subtitle: Text('Nothing'),
            ),
          ),
        ],
      ),
    );
  }
}
