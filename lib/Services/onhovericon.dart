import 'package:flutter/material.dart';

class OnHoverIcon extends StatefulWidget {
  final Widget child;

  OnHoverIcon({Key? key, required this.child}) : super(key: key);

  @override
  _OnHoverIconState createState() => _OnHoverIconState();
}

class _OnHoverIconState extends State<OnHoverIcon> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final hoveredTransform = Matrix4.identity()..scale(1.1);
    final transform = isHovered ? hoveredTransform : Matrix4.identity();

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          transform: transform,
          child: widget.child),
    );
  }

  void onEntered(bool isHovered) => setState(() {
        this.isHovered = isHovered;
      });
}
