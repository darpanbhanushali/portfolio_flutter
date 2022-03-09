import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({required this.text1, required this.text2});
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText.rich(
          TextSpan(
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: Color(0xFF2F2E4D),
            ),
            children: [
              TextSpan(text: text1),
              TextSpan(
                text: text2,
                style: TextStyle(
                  color: Colors.grey[800],
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 7.0),
          child: Container(
              constraints: BoxConstraints(maxWidth: 275),
              height: 1,
              color: Colors.grey[300]),
        ),
      ],
    );
  }
}
