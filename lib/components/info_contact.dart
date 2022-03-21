import 'package:flutter/material.dart';

class InfoContact extends StatelessWidget {
  InfoContact(
      {required this.text,
      required this.subtext,
      required this.icon,
      required this.query});
  final String text;
  final String subtext;
  final IconData icon;
  final MediaQueryData query;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: query.size.width / 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 30,
            color: Color(0xFF2F5EB0),
          ),
          SizedBox(
            height: 23,
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.headline5!.copyWith(
                color: Color(0xFF2E2555), fontWeight: FontWeight.w900),
          ),
          SizedBox(
            height: 15,
          ),
          SelectableText(
            subtext,
            toolbarOptions: ToolbarOptions(
              copy: true,
            ),
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
