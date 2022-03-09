import 'package:flutter/material.dart';

class OnHoverTab extends StatefulWidget {
  final Widget Function(bool isHovered) builder;
  final bool isCurrentTab;

  OnHoverTab({Key? key, required this.builder, required this.isCurrentTab})
      : super(key: key);

  @override
  _OnHoverTabState createState() => _OnHoverTabState();
}

class _OnHoverTabState extends State<OnHoverTab> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final hoveredTransform = Matrix4.identity()..translate(10, 0, 0);
    final transform = widget.isCurrentTab
        ? Matrix4.identity()
        : isHovered
            ? hoveredTransform
            : Matrix4.identity();

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          transform: transform,
          child: widget.builder(isHovered)),
    );
  }

  void onEntered(bool isHovered) => setState(() {
        this.isHovered = isHovered;
      });
}
