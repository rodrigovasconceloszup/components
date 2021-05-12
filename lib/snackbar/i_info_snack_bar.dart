import 'package:flutter/material.dart';
import 'package:test_font/iupp_icons.dart';
import 'package:test_font/snackbar/i_snack_bar.dart';

class IInfoSnackBar extends ISnackBar {
  IInfoSnackBar(
    BuildContext context, {
    required String message,
  }) : super(
          context,
          message: message,
          icon: IuppIcons.icone_contorno_I_informacao_outline,
          backgroundColor: Color(0xFF007DED),
        );
}
