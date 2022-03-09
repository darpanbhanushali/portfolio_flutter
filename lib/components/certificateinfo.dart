import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'package:portfolio_flutter/Services/responsive.dart';

class CertificatesInfo extends StatefulWidget {
  CertificatesInfo(
      {required this.image,
      required this.headText,
      required this.subText,
      required this.link});
  final String image;
  final String headText;
  final String subText;
  final String link;

  @override
  State<CertificatesInfo> createState() => _CertificatesInfoState();
}

class _CertificatesInfoState extends State<CertificatesInfo> {
  bool hoverStatus = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: GestureDetector(
        onTap: () {
          html.window.open(widget.link, "_blank");
        },
        child: Container(
          height: Responsive.isSmallScreen(context) ? 435 : 410,
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
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
                height: 230,
                width: 230,
                child: Image.asset(
                  widget.image,
                  fit: BoxFit.scaleDown,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 13, bottom: 2, left: 15, right: 7),
                child: Text(
                  widget.headText,
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 13, bottom: 2, left: 15, right: 7),
                child: Text(
                  widget.subText,
                  // textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey[600], fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onEntered(bool isHovered) => setState(() {
        this.hoverStatus = isHovered;
      });
}
