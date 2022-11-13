import 'package:flutter/material.dart';

class LoaderIndicatorWidget extends StatelessWidget {
  const LoaderIndicatorWidget({
    super.key,
    this.color,
    this.size,
  });

  final Color? color;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size ?? 18,
      height: size ?? 18,
      child: CircularProgressIndicator(
        color: color ?? Colors.white,
        strokeWidth: 2,
      ),
    );
  }
}
