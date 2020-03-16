import 'package:ace/utils/size.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class WebMyHomePage extends StatefulWidget {
  @override
  _WebMyHomePageState createState() => _WebMyHomePageState();
}

List<String> _carousalList = [
  'web/assets/ace/1.jpg',
  'web/assets/ace/4.jpg',
];

class _WebMyHomePageState extends State<WebMyHomePage> {
  SizeCompare size;
  get _images => _carousalList.map(
        (i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Image.asset(i));
            },
          );
        },
      ).toList();

  get _navBar => Wrap(
        crossAxisAlignment: WrapCrossAlignment.end,
        alignment: WrapAlignment.center,
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
          Wrap(
            alignment: WrapAlignment.center,
            children: <Widget>[
              MenuOptions('ACE 2020'),
              MenuOptions('Workshop'),
              MenuOptions('Important Dates'),
              MenuOptions('Registration'),
              MenuOptions('Submission Guidelines'),
              MenuOptions('Contact Us'),
              MenuOptions('Sponsors'),
            ],
          ),
        ],
      );

  get _carousalForeground => BoxDecoration(
      image: DecorationImage(image: AssetImage('web/assets/ace/border.png')));

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    size = new SizeCompare(size: MediaQuery.of(context).size);

    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[
            _navBar,
            Container(
              foregroundDecoration: _carousalForeground,
              child: CarouselSlider(
                height: size.lower,
                autoPlayAnimationDuration: Duration(seconds: 3),
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayCurve: Interval(0.5, 0.6),
                items: _images,
              ),
            ),
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
      padding: const EdgeInsets.only(right: 4.0, top: 4.0),
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
