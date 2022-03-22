import 'package:flutter/material.dart';
import 'package:portfolio_flutter/Services/onhoverbuttons.dart';
import 'package:portfolio_flutter/Services/responsive.dart';
import 'package:portfolio_flutter/components/info.dart';
import 'package:portfolio_flutter/Services/selectedTab.dart';
import 'package:provider/provider.dart';
import 'package:portfolio_flutter/components/timelinetile.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size query = MediaQuery.of(context).size;
    return Expanded(
      flex: 7,
      child: Container(
        constraints: BoxConstraints.expand(),
        padding: EdgeInsets.symmetric(
            horizontal: Responsive.isSmallScreen(context) ? 30 : 55,
            vertical: Responsive.isSmallScreen(context) ? 8 : 30),
        color: Color(0xFFF2F2FC),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About Me',
                style: Theme.of(context).textTheme.headline3!.copyWith(
                    color: Color(0xFF2E2555), fontWeight: FontWeight.w900),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 5),
                child: Container(
                  height: 4,
                  width: 55,
                  color: Color(0xFF2F5EB0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Container(
                  height: 4,
                  width: 35,
                  color: Color(0xFF2F5EB0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 12),
                child: RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: Color(0xFF2E2555), fontWeight: FontWeight.w900),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Hello! I am Darpan Bhanushali, ',
                      ),
                      TextSpan(
                        text: 'Currently in my Final year of Engineering ',
                        style: TextStyle(
                          color: Color(0xFF2F5EB0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 40),
                child: Text(
                  'I am pursuing my Bachelor\'s degree in Information Technology from Shah and Anchor Kutchhi Engineering College, Mumbai, India. I am a very ambitious individual who is curious to learn and implement new concepts and technologies. I\'ve learned various technologies and also have managed to implement various projects using Technologies such as Python, Html, Flutter.',
                  style: TextStyle(color: Colors.grey[600], fontSize: 18),
                ),
              ),
              Row(
                mainAxisAlignment: Responsive.isSmallScreen(context)
                    ? MainAxisAlignment.spaceAround
                    : MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width /
                        (Responsive.isSmallScreen(context) ? 3.2 : 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Info(
                          text1: 'Email : ',
                          text2: 'darpan.bhanushali@sakec.ac.in',
                        ),
                        Info(
                          text1: 'Website : ',
                          text2: 'darpanbhanushali.github.io/#/',
                        ),
                        Info(
                          text1: 'Degree : ',
                          text2: 'B.E.',
                        ),
                        Info(
                          text1: 'City : ',
                          text2: 'Mumbai',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 15,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width /
                        (Responsive.isSmallScreen(context) ? 3.2 : 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Info(
                          text1: 'Age : ',
                          text2: '21',
                        ),
                        Info(
                          text1: 'Phone : ',
                          text2: '+91 99303 63344',
                        ),
                        Info(
                          text1: 'Job Status : ',
                          text2: 'Available for Internship',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: Responsive.isSmallScreen(context) ? 18 : 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    OnHover(
                      child: Material(
                        color: Color(0xFF2F5EB0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: MaterialButton(
                          height: 50,
                          minWidth: MediaQuery.of(context).size.width /
                              (Responsive.isSmallScreen(context) ? 2.7 : 5),
                          onPressed: null,
                          // color: Color(0xFF2F5EB0),
                          child: Text(
                            'Download CV',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 30,
                    ),
                    OnHover(
                      child: Material(
                        color: Color(0xFF2F5EB0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: MaterialButton(
                          height: 50,
                          minWidth: MediaQuery.of(context).size.width /
                              (Responsive.isSmallScreen(context) ? 4 : 6),
                          onPressed: () {
                            Provider.of<SelectedTab>(context, listen: false)
                                .updateSelectedTab('contact');
                          },
                          // color: Color(0xFF2F5EB0),
                          child: Text(
                            'Hire Me',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    // OnHover(
                    //   child: Expanded(
                    //     child: Container(
                    //       margin: EdgeInsets.all(10),
                    //       // width: MediaQuery.of(context).size.width / 5,
                    //       // height: MediaQuery.of(context).size.height / 20,
                    //       height: 30,
                    //       padding:
                    //           EdgeInsets.symmetric(vertical: 4, horizontal: 14),
                    //       decoration: BoxDecoration(
                    //         // shape: BoxShape.rectangle,
                    //         borderRadius: BorderRadius.all(Radius.circular(15)),
                    //         color: Color(0xFF2F5EB0),
                    //       ),
                    //       child: Center(
                    //         child: Text(
                    //           'Download CV',
                    //           style: TextStyle(
                    //               fontWeight: FontWeight.bold,
                    //               color: Colors.white),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // GestureDetector(
                    //   onTap: () {
                    //     Provider.of<SelectedTab>(context, listen: false)
                    //         .updateSelectedTab('contact');
                    //   },
                    //   child: OnHover(
                    //     child: Expanded(
                    //       child: Container(
                    //         margin: EdgeInsets.all(10),
                    //         padding:
                    //             EdgeInsets.symmetric(vertical: 4, horizontal: 14),
                    //         // width: MediaQuery.of(context).size.width / 7,
                    //         // height: MediaQuery.of(context).size.height / 20,
                    //         height: 30,
                    //         decoration: BoxDecoration(
                    //           // shape: BoxShape.rectangle,
                    //           borderRadius: BorderRadius.all(Radius.circular(15)),
                    //           color: Color(0xFF2F5EB0),
                    //         ),
                    //         child: Center(
                    //           child: Text(
                    //             'Hire Me',
                    //             style: TextStyle(
                    //                 fontWeight: FontWeight.bold,
                    //                 color: Colors.white),
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Education',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Color(0xFF2E2555), fontWeight: FontWeight.w900),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.all(Responsive.isSmallScreen(context) ? 00 : 10),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(width: 0.7, color: Colors.grey.shade400),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: Responsive.isSmallScreen(context) ? 00 : 10,
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius:
                            Responsive.isSmallScreen(context) ? 0 : 3),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 28, left: 18, right: 10, bottom: 10),
                  child: Column(
                    children: [
                      TimelineTileHelper(
                        query: query,
                        year: '2018-2022',
                        headtext:
                            'Bachelor Of Engineering In Information Technology',
                        grades: 'CGPA: 8.68',
                        subtext:
                            'I am pursuing my Bachelor\'s degree in the field of Information Technology from Shah and Anchor Kutchhi Engineering College, Mumbai, India.',
                      ),
                      TimelineTileHelper(
                        query: query,
                        year: '2017-2018',
                        headtext: 'Higher Secondary Certificate Examination',
                        grades: 'Percentage: 77.2%',
                        subtext:
                            'I have completed my H.S.C (12th) from K.J Somaiya Junior College, Mumbai, India. During this course I learned the curriculum subjects which helped me increase my analytical skills.',
                      ),
                      TimelineTileHelper(
                        query: query,
                        year: '2015-2016',
                        headtext: 'Secondary School Certificate Examination',
                        grades: 'Percentage: 88.2%',
                        subtext:
                            'Completed my S.S.C from A.I.E.S High School, Mumbai. While in this course core subjects such as Mathematics and Science helped me build a strong base for my career.',
                      ),
                    ],
                  ),
                ),
                // child: Timeline.tileBuilder(
                //   theme: TimelineThemeData(
                //     nodePosition: 0,
                //     indicatorPosition: 0,
                //     connectorTheme: ConnectorThemeData(
                //       thickness: 1.0,
                //       color: Color(0xFF2F5EB0),
                //     ),
                //     indicatorTheme: IndicatorThemeData(
                //       size: 15.0,
                //     ),
                //   ),
                //   padding: EdgeInsets.symmetric(vertical: 20.0),
                //   builder: TimelineTileBuilder.connected(
                //     contentsBuilder: (_, __) => Container(
                //       child: Column(
                //         crossAxisAlignment: CrossAxisAlignment.stretch,
                //         mainAxisAlignment: MainAxisAlignment.start,
                //         children: [
                //           Row(
                //             children: [
                //               Icon(FontAwesomeIcons.calendarAlt),
                //               Text('2018-2022')
                //             ],
                //           ),
                //           Text(
                //             'Bachelor Of Engineering In Information Technology',
                //             style: Theme.of(context)
                //                 .textTheme
                //                 .headline6!
                //                 .copyWith(
                //                     color: Color(0xFF2E2555),
                //                     fontWeight: FontWeight.w900),
                //           ),
                //           Text(
                //             'CGPA: 8.68',
                //             style: TextStyle(
                //                 color: Color(0xFF495167),
                //                 fontWeight: FontWeight.bold),
                //           ),
                //           Text(
                //               'I am pursuing my Bachlors degree in Information Technology from Shah and Anchor Kutchhi Engineering College, Mumbai, India.')
                //         ],
                //       ),
                //     ),

                //     indicatorBuilder: (_, index) {
                //       return DotIndicator(
                //         color: Colors.blue,
                //       );
                //     },
                //     connectorBuilder: (_, index, ___) => SolidLineConnector(
                //       color: Colors.blue,
                //     ),
                //     // indicatorBuilder: (_, index) {
                //     //   switch (data[index]) {
                //     //     case _TimelineStatus.done:
                //     //       return DotIndicator(
                //     //         color: Color(0xff6ad192),
                //     //         child: Icon(
                //     //           Icons.check,
                //     //           color: Colors.white,
                //     //           size: 10.0,
                //     //         ),
                //     //       );
                //     //     case _TimelineStatus.sync:
                //     //       return DotIndicator(
                //     //         color: Color(0xff193fcc),
                //     //         child: Icon(
                //     //           Icons.sync,
                //     //           size: 10.0,
                //     //           color: Colors.white,
                //     //         ),
                //     //       );
                //     //     case _TimelineStatus.inProgress:
                //     //       return OutlinedDotIndicator(
                //     //         color: Color(0xffa7842a),
                //     //         borderWidth: 2.0,
                //     //         backgroundColor: Color(0xffebcb62),
                //     //       );
                //     //     case _TimelineStatus.todo:
                //     //     default:
                //     //       return OutlinedDotIndicator(
                //     //         color: Color(0xffbabdc0),
                //     //         backgroundColor: Color(0xffe6e7e9),
                //     //       );
                //     //   }
                //     // },
                //     itemExtentBuilder: (_, __) => 150,
                //     itemCount: 3,
                //   ),
                // ),
                //   child: Timeline.tileBuilder(
                //     builder: TimelineTileBuilder.connected(
                //       contentsAlign: ContentsAlign.basic,
                //       contentsBuilder: (context, index) => Padding(
                //         padding: const EdgeInsets.symmetric(vertical: 10.0),
                //         child: Text('Timeline Event $index'),
                //       ),
                //       itemCount: 3,
                //     ),
                //   ),
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// Material(
//                     color: Color(0xFF2F5EB0),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     child: MaterialButton(
//                       height: 45,
//                       minWidth: MediaQuery.of(context).size.width / 5,
//                       onPressed: null,
//                       // color: Color(0xFF2F5EB0),
//                       child: Text(
//                         'Send Message',
//                         style: TextStyle(
//                             color: Colors.white, fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                   ),
//                   Material(
//                     color: Color(0xFF2F5EB0),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     child: MaterialButton(
//                       height: 45,
//                       minWidth: MediaQuery.of(context).size.width / 5,
//                       onPressed: null,
//                       // color: Color(0xFF2F5EB0),
//                       child: Text(
//                         'Send Message',
//                         style: TextStyle(
//                             color: Colors.white, fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                   ),
