import 'package:flutter/material.dart';
import 'package:joshvocal_dev/widgets/app_bar_widget.dart';
import 'package:joshvocal_dev/widgets/currently_widget.dart';
import 'package:joshvocal_dev/widgets/employment_widget.dart';
import 'package:joshvocal_dev/widgets/footer_widget.dart';
import 'package:joshvocal_dev/widgets/intro_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: widget.title,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          alignment: Alignment.center,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                IntroWidget(),
                EmploymentWidget(),
                CurrentWidget(),
                FooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
