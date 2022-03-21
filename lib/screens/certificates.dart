import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/certificateinfo.dart';
import 'package:portfolio_flutter/Services/responsive.dart';

class Certificates extends StatelessWidget {
  const Certificates({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                'Certificates',
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
                    // direction: Axis.vertical,
                    alignment: WrapAlignment.center,
                    // spacing:8.0,
                    // runAlignment:WrapAlignment.center,
                    // runSpacing: 8.0,
                    // crossAxisAlignment: WrapCrossAlignment.center,
                    // textDirection: TextDirection.rtl,
                    // verticalDirection: VerticalDirection.up,
                    children: <Widget>[
                      CertificatesInfo(
                        link:
                            'https://drive.google.com/file/d/187KXr8oSLSHIs_ISPGkHmoowMfxmozJP/view?usp=sharing',
                        image: 'images/python.png',
                        headText: 'Full Stack Python Development Certification',
                        subText:
                            'This Certificate was issued by RPISE for completing Full Stack Python development course',
                      ),
                      CertificatesInfo(
                        link:
                            'https://play.google.com/store/apps/details?id=com.sakecmarathon.sakec_marathon&hl=en_IN&gl=US',
                        image: 'images/flutter.png',
                        headText: 'Sakec Marathon Application using Flutter',
                        subText:
                            'This Certificate was issued by SAKEC for developing an application using Flutter ',
                      ),
                      CertificatesInfo(
                        link:
                            'https://drive.google.com/file/d/1NU9pFv0irAv7itCNfc9lR9G-Im481bGl/view?usp=sharing',
                        image: 'images/Arduino.png',
                        headText:
                            'Biometric Authentication System using Arduino',
                        subText:
                            'Certificate issued for publishing a Research Paper on Smart Locking system using Arduino',
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
