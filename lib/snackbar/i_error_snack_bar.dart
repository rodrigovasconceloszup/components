import 'package:flutter/material.dart';
import 'package:test_font/iupp_icons.dart';
import 'package:test_font/snackbar/i_snack_bar.dart';

class IErrorSnackBar extends ISnackBar {
  IErrorSnackBar(
    BuildContext context, {
    required String message,
  }) : super(
          context,
          message: message,
          icon: IuppIcons.icone_contorno_A_aviso_outline,
          backgroundColor: Color(0xFFDE1E12),
        );
}
