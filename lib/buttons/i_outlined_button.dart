import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_font/theme.dart';

class IOutlinedButton extends StatelessWidget {
  const IOutlinedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.buttonStyle,
    this.isLoading = false,
  }) : super(key: key);

  final String text;
  final VoidCallback? onPressed;
  final ButtonStyle? buttonStyle;
  final bool isLoading;

  bool get isDisabled => onPressed == null;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: isLoading
          ? SizedBox(
              width: 10,
              height: 10,
              child: CircularProgressIndicator.adaptive(
                valueColor: AlwaysStoppedAnimation<Color>(
                  Color(0xFF181820),
                ),
                strokeWidth: 2,
              ),
            )
          : Text(
              text,
              style: TextStyle(
                fontSize: 12,
                color: !isDisabled
                    ? Theme.of(context).backgroundColor
                    : disabledButtonTextColor,
              ),
            ),
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(14),
          ),
          side: BorderSide(
            color: isDisabled ? disabledButtonTextColor : Colors.black,
            width: 1.0,
          ),
        ),
        side: BorderSide(
          color: isDisabled ? disabledButtonTextColor : Colors.black,
          width: 1.0,
        ),
      ),
    );
  }
}
