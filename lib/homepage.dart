import 'package:ace/utils/size.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import "package:charcode/charcode.dart";

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
              child: Image.asset(
                'web/assets/ace/ace-black.png',
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

  get _aceImage => Image.asset('web/assets/ace/ace-featured.jpg');

  get _ajceLogo => Image.asset('web/assets/ace/ajce-emblem.png');

  get _easyChair => Image.asset('web/assets/ace/easychair.png');

  get _civilLogo => Image.asset('web/assets/ace/civil-logo.jpg');

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
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    child: _aceImage,
                    height: size.greater / 10,
                  ),
                  Container(
                    width: size.greater / 2,
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Text(
                            'ACE 2020',
                            style: TextStyle(fontSize: size.greater / 30),
                          ),
                          Text(
                            'National  Conference on Advances in Civil Engineering',
                            style: TextStyle(fontSize: size.greater / 60),
                          ),
                          Text(
                            '28th & 29th May 2020',
                            style: TextStyle(fontSize: size.greater / 60),
                          ),
                          Text(
                            'Amal Jyothi College of Engineering',
                            style: TextStyle(fontSize: size.greater / 60),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: _ajceLogo,
                    height: size.greater / 10,
                  ),
                ],
              ),
            ),
            SizedBox(height: size.lower / 10),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    child: _easyChair,
                    height: size.greater / 10,
                  ),
                  Container(
                    width: size.greater / 2,
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Abstact Submission deadline: 20th March 2020',
                            style: TextStyle(fontSize: size.greater / 60),
                          ),
                          Text(
                            'Registration deadline: 10th April 2020',
                            style: TextStyle(fontSize: size.greater / 60),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: _civilLogo,
                    height: size.greater / 10,
                  ),
                ],
              ),
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
