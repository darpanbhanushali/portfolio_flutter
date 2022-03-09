// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_flutter/Services/onhovericon.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 7,
      child: Container(
        color: Color(0xFFF2F2FC),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 3,
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 7)
                ],
              ),
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.height / 6.5,
                backgroundImage: AssetImage('images/profile.png'),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 20),
            Text(
              'Darpan Bhanushali',
              // style: TextStyle(
              //     fontFamily: 'FiraSans',
              //     fontSize: 30,
              //     fontWeight: FontWeight.w900,
              //     color: Theme.of(context).primaryColor),
              style: Theme.of(context).textTheme.headline4!.copyWith(
                  fontFamily: 'FiraSans',
                  color: Color(0xFF2E2555),
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 55,
            ),
            Text(
              'I\'m a Software Developer',
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontSize: 19,
                    color: Colors.grey[800],
                  ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 23,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: GestureDetector(
                    onTap: () {
                      html.window.open(
                          'https://www.linkedin.com/in/darpan-bhanushali-7257b0201',
                          "_blank");
                    },
                    child: OnHoverIcon(
                      child: Icon(
                        FontAwesomeIcons.linkedin,
                        size: 36,
                        color: Color(0xFF2F5EB0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: GestureDetector(
                    onTap: () {
                      html.window.open(
                          'https://www.facebook.com/darpan.khaniya', "_blank");
                    },
                    child: OnHoverIcon(
                      child: Icon(
                        FontAwesomeIcons.facebookSquare,
                        size: 36,
                        color: Color(0xFF2F5EB0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: GestureDetector(
                    onTap: () {
                      html.window.open('https://github.com/1darpan', "_blank");
                    },
                    child: OnHoverIcon(
                      child: Icon(
                        FontAwesomeIcons.githubSquare,
                        size: 36,
                        color: Color(0xFF2F5EB0),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
