import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EmploymentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              bottom: 32,
            ),
            child: Text(
              'Previous Work',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Container(
                width: 40,
                alignment: Alignment.center,
                child: Image.asset('assets/sap.png'),
              ),
              title: Text('SAP Inc.'),
              subtitle: Text('Agile Developer Intern - Frontend'),
              trailing: InkWell(
                child: Icon(Icons.link),
                onTap: () => launch('https://www.sap.com/canada/index.html'),
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Container(
                width: 40,
                alignment: Alignment.center,
                child: Image.asset('assets/realtor.png'),
              ),
              title: Text('realtor.com'),
              subtitle: Text('Software Engineer Intern - Android'),
              trailing: InkWell(
                child: Icon(Icons.link),
                onTap: () => launch('https://www.realtor.com/'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
