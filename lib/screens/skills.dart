import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_flutter/Services/responsive.dart';

// ignore: must_be_immutable
class Skills extends StatelessWidget {
  late MediaQueryData queryData;

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);

    return Expanded(
      flex: 7,
      child: Container(
        constraints: BoxConstraints.expand(),
        padding: EdgeInsets.symmetric(
            horizontal: Responsive.isSmallScreen(context) ? 30 : 50,
            vertical: Responsive.isSmallScreen(context) ? 8 : 30),
        color: Color(0xFFF2F2FC),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Skills',
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
                padding: const EdgeInsets.only(top: 25.0),
                child: Center(
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: <Widget>[
                      ServiceInfo(
                        iconInfo: FontAwesomeIcons.code,
                        headText: 'Python',
                        subText:
                            'I am a certified python programmer and capable of coding for Full Stack Development using Python.',
                      ),
                      ServiceInfo(
                        iconInfo: FontAwesomeIcons.mobileAlt,
                        headText: 'App Development',
                        subText:
                            'With an experience in Building mobile applications, I am capable of coding using Flutter.',
                      ),
                      ServiceInfo(
                        iconInfo: FontAwesomeIcons.laptopCode,
                        headText: 'Web Development',
                        subText:
                            'With some experience in develping some projects, I can develop website using HTML, CSS and Javascript.',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ServiceInfo extends StatefulWidget {
  ServiceInfo(
      {required this.iconInfo, required this.headText, required this.subText});
  final String headText;
  final String subText;
  final IconData iconInfo;

  @override
  State<ServiceInfo> createState() => _ServiceInfoState();
}

class _ServiceInfoState extends State<ServiceInfo> {
  bool hoverStatus = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: Container(
        height: Responsive.isSmallScreen(context) ? 250 : 230,
        width: 350,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(width: 0.7, color: Colors.grey.shade400),
          boxShadow: [
            BoxShadow(
                blurRadius: hoverStatus ? 10 : 0,
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: hoverStatus ? 3 : 0),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 13),
              child: CircleAvatar(
                radius: 28,
                backgroundColor: hoverStatus ? Color(0xFF2F5EB0) : Colors.white,
                child: Icon(
                  widget.iconInfo,
                  size: hoverStatus ? 21 : 32,
                  color: hoverStatus ? Colors.white : Color(0xFF2F5EB0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 13),
              child: Text(
                widget.headText,
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 6),
              child: Text(
                widget.subText,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey[600], fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onEntered(bool isHovered) => setState(() {
        this.hoverStatus = isHovered;
      });
}
