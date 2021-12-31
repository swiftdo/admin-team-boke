import 'package:admin_team_boke/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InputView extends HookConsumerWidget {
  final String hintText;
  final IconData icon;
  final double marginTop;
  final TextInputType? keyboardType;
  final FormFieldValidator<String>? validator;
  final Function(String text, WidgetRef ref)? onChanged;
  final bool obscureText;

  const InputView({
    Key? key,
    required this.hintText,
    required this.icon,
    this.marginTop = 10,
    this.onChanged,
    this.validator,
    this.keyboardType,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.only(top: marginTop),
      decoration: BoxDecoration(
        color: ColorName.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Container(
            child: FaIcon(
              icon,
              color: ColorName.gray410,
              size: 20,
            ),
            margin: const EdgeInsets.only(right: 10),
          ),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
              ),
              keyboardType: keyboardType,
              onChanged: (text) {
                onChanged?.call(text, ref);
              },
              validator: validator,
              obscureText: obscureText,
            ),
          )
        ],
      ),
    );
  }
}
