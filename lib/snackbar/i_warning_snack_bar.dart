import 'package:flutter/material.dart';
import 'package:test_font/iupp_icons.dart';
import 'package:test_font/snackbar/i_snack_bar.dart';

class IWarningSnackBar extends ISnackBar {
  IWarningSnackBar(
    BuildContext context, {
    required String message,
  }) : super(
          context,
          message: message,
          icon: IuppIcons.icone_contorno_R_recarregar,
          backgroundColor: Color(0xFFB95800),
        );
}
