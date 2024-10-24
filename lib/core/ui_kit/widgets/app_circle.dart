import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/ui_kit/theming/app_theme.dart';

class AppCircle extends StatelessWidget {
  late final Color color;
  final double width;
  final double height;
  final Widget child;
  final VoidCallback? onTap;

  AppCircle({
    super.key,
    Color? color,
    this.width = 40,
    this.height = 40,
    required this.child,
    this.onTap,
  }) {
    this.color = color ?? appTheme.colorPalette.irisBlue;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
