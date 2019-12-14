import 'package:flutter/material.dart';

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
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
            ),
            child: Text(
              'Previous Work',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Divider(
            color: Colors.blue,
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
            ),
          ),
        ],
      ),
    );
  }
}
