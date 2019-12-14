import 'package:flutter/material.dart';

class IntroWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            child: Text(
              'Hello, I\'m Josh! 👋',
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            padding: EdgeInsets.only(bottom: 24),
          ),
          Padding(
            child: Text(
              'I\'m a software engineer studying Computer Science at '
              'Simon Fraser University whos currently interning at Shopify.',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            padding: EdgeInsets.only(bottom: 8),
          ),
        ],
      ),
    );
  }
}
