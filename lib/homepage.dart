import 'package:flutter/material.dart';

class WebMyHomePage extends StatefulWidget {
  @override
  _WebMyHomePageState createState() => _WebMyHomePageState();
}

class _WebMyHomePageState extends State<WebMyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   title: Container(
      //     child: Image.network(
      //       'https://ajce.in/ce/images/Logo.png',
      //       // fit: BoxFit.fitWidth,
      //       height: 50,
      //     ),
      //   ),
      //   actions: <Widget>[
      //     Wrap(
      //       children: <Widget>[
      //         MenuOptions('ACE 2020'),
      //         MenuOptions('Workshop'),
      //         MenuOptions('Important Dates'),
      //         MenuOptions('Registration'),
      //         MenuOptions('Submission Guidelines'),
      //         MenuOptions('Contact Us'),
      //         MenuOptions('Sponsors'),
      //       ],
      //     ),
      //     // Text('ACE 2020'),
      //   ],
      // ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Wrap(
              direction: Axis.horizontal,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Image.network(
                      'https://ajce.in/ce/images/Logo.png',
                      height: 50,
                    ),
                  ),
                ),
                MenuOptions('ACE 2020'),
                MenuOptions('Workshop'),
                MenuOptions('Important Dates'),
                MenuOptions('Registration'),
                MenuOptions('Submission Guidelines'),
                MenuOptions('Contact Us'),
                MenuOptions('Sponsors'),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1.2,
              color: Colors.green[100],
            )
          ],
        ),
      ),
    );
  }
}

class MenuOptions extends StatelessWidget {
  Size size;
  final String title;

  MenuOptions(this.title);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        height: size.height / 12,
        width: 150,
        color: Colors.grey[100],
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title),
          ),
        ),
      ),
    );
  }
}
