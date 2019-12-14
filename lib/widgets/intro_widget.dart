import 'package:flutter/material.dart';

class IntroWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            child: Text(
              'Hello, I\'m Josh! 👋',
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            padding: EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 32),
          ),
          Padding(
            child: Text(
              'I\'m a software engineer studying Computer Science at Simon Fraser University.',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            padding: EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 8),
          ),
          Text(
            'Currently an intern at Shopify and previously at SAP.',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
