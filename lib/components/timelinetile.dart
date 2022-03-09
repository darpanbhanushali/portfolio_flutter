import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_flutter/Services/responsive.dart';

class TimelineTileHelper extends StatelessWidget {
  TimelineTileHelper(
      {required this.year,
      required this.headtext,
      required this.grades,
      required this.subtext,
      required this.query});
  final String headtext, subtext, grades, year;
  final Size query;

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      alignment: TimelineAlign.start,
      afterLineStyle: const LineStyle(color: Color(0xFF2B5BB0), thickness: 1),
      beforeLineStyle: const LineStyle(color: Color(0xFF2B5BB0), thickness: 1),
      indicatorStyle: const IndicatorStyle(
          width: 15, color: Color(0xFF2B5BB0), indicatorXY: 0),
      endChild: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Container(
          height:
              (Responsive.isSmallScreen(context) ? 280 : 235000 / query.width),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 4),
                      child: Icon(
                        FontAwesomeIcons.solidCalendarAlt,
                        size: 14,
                        color: Color(0xFF504E70),
                      ),
                    ),
                    AutoSizeText(
                      year,
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF504E70),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: AutoSizeText(
                  headtext,
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                      color: const Color(0xFF302E4D),
                      fontWeight: FontWeight.w900,
                      fontSize: 25),
                ),
              ),
              AutoSizeText(
                grades,
                style: TextStyle(
                  color: Color(0xFF504E70),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: AutoSizeText(
                  subtext,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w100),
                ),
              ),
            ],
          ),
        ),
      ),
      isFirst: true,
    );
  }
}
