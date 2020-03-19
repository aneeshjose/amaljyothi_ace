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

  get _dranilkumar => Container(
        child: Image.asset('web/assets/ace/dr-anil-kumar.png'),
        height: 300,
      );
  get _drveena => Container(
        child: Image.asset('web/assets/ace/dr-cv-veena.png'),
        height: 300,
      );

  // get _drveena => Image.asset('web/assets/ace/dr-cv-veena.png');

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
            Padding(
              padding: EdgeInsets.only(left: 50, right: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
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
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        'ACE 2020',
                        style: TextStyle(fontSize: size.greater / 60),
                      ),
                    ),
                  ),
                  Container(height: 10),
                  Container(
                    child: Text(
                      '''The Department of Civil Engineering, Amal Jyothi College of Engineering in association with ISTE Kerala and Indian Concrete Institute is organizing a workshop on 27th May and a two day national conference on 28th & 29th of May. The conference will provide a platform for subject experts, researchers and business persons to discuss developments and technological advances in their area of expertise. Research in the field of Civil Engineering is traditionally focused in isolated areas. This trend is gradually changing and the experts are looking towards collaboration. In this conference, applications and impacts of challenges faced in each research area will be taken up for discussion in a general forum consisting of experts from multiple fields. This will help researchers and industry experts to be more inclusive in their work.''',
                      style: TextStyle(fontSize: size.greater / 70),
                    ),
                  ),
                  Container(height: 10),
                  Container(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Research articles, Full/Work-in-progress papers, State-of-the-art papers, Review papers and case studies are invited for the following tracks',
                        style: TextStyle(fontSize: size.greater / 70),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(50),
                    child: Column(
                      children: <Widget>[
                        Tracks('Construction Engineering & Management', size),
                        Tracks('Environmental Engineering', size),
                        Tracks('Geotechnical Engineering', size),
                        Tracks('Structural Engineering', size),
                        Tracks('Transportation Engineering', size),
                        Tracks('Water Resource Engineering', size),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Wrap(
                runSpacing: 10,
                crossAxisAlignment: WrapCrossAlignment.center,
                direction: Axis.horizontal,
                runAlignment: WrapAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: size.size.width / 2.4,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            _dranilkumar,
                            Text(
                              'Dr M V Anil Kumar',
                              style: TextStyle(fontSize: size.greater / 50),
                            ),
                          ],
                        ),
                        Container(
                          child: Text(
                            'Dr. M. V. Anil Kumar completed his B.Tech in Civil Engineering from Govt. College of Engineering Kannur and further, he pursued his Masters from Indian Institute of Technology Madras. He got rewarded with Ph.D from, Indian Institute of Technology Madras. His primary research interest concerns “Buckling and post-buckling behaviour of thin-walled open sections”. Before joining IIT Palakkad in the year 2016 as Asst. Professor, he worked with WS Atkins Pvt. Ltd. in Major Project Division as Group Engineer for Metro Design during the period 2015-2016, Senior Engineer during 2013-2015 and Design Engineer for Rail Solutions during 2012-2013. He also served as Engineering Consultant for Bridges with L&T Ramboll, Pvt. Ltd from 2006-2007. He has published in several international journals such as the ASCE and Conference Proceedings in the Structural Engineering field. Dr. Anil is currently working on several Sponsored and Consultancy Projects as well.',
                            style: TextStyle(fontSize: size.greater / 70),
                            textAlign: TextAlign.justify,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(width: size.size.width / 15),
                  Container(
                    width: size.size.width / 2.4,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            _drveena,
                            Text(
                              'Dr C V Veena Venudharan',
                              style: TextStyle(fontSize: size.greater / 50),
                            ),
                          ],
                        ),
                        Container(
                          child: Text(
                            'Dr. C. V. Veena Venudharan, is working as an Associate Professor in the Department of Civil Engineering at IIT Palakkad. She completed her B. Tech in Civil Engineering from NSS Palakkad and further pursued her Masters in Transportation Engineering and Doctoral program in Pavement Engineering from IIT Kharagpur. Her research interests include transportation pavement materials, design, maintenance, and rehabilitation; forensic evaluation; life cycle assessment; and sustainable infrastructure. Dr. Veena Venudharan has worked as Research Manager in the Transportation Infra Business of Larsen and Toubro Construction. She was also involved in the development of a Research Center among other responsibilities of technical audits of projects, practice of new technologies and troubleshooting at the site. Prior to that, she served as a Project Associate at IIT Madras and IIT Kharagpur. She serves as a reviewer in many international journals and is a member of various professional bodies.',
                            style: TextStyle(fontSize: size.greater / 70),
                            textAlign: TextAlign.justify,
                          ),
                        )
                      ],
                    ),
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

class Tracks extends StatelessWidget {
  final String text;
  final SizeCompare size;

  const Tracks(this.text, this.size, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: <Widget>[
          Image.asset(
            'web/assets/ace/ace-featured.jpg',
            scale: 8,
          ),
          Container(width: 20),
          Text(
            text,
            style: TextStyle(fontSize: size.greater / 70),
          )
        ],
      ),
    );
  }
}
