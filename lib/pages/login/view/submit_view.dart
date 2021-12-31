import 'package:admin_team_boke/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class SubmitView extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final AlignmentGeometry? alignment;
  final bool enable;
  final Color color;

  const SubmitView({
    Key? key,
    required this.title,
    this.onTap,
    this.margin,
    this.padding,
    this.alignment,
    this.enable = false,
    this.color = Colors.blue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (enable) {
          onTap?.call();
        }
      },
      child: Container(
        margin: margin,
        padding: padding,
        alignment: alignment,
        decoration: BoxDecoration(
          color: enable ? color : color.withOpacity(0.6),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          title,
          style: const TextStyle(color: ColorName.white),
        ),
      ),
    );
  }
}
