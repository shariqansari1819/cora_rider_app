import 'package:another_flushbar/flushbar.dart';
import 'package:ars_progress_dialog/dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

class ToastUtils {

  static showArsProgressDialog(BuildContext context) {
    return ArsProgressDialog(context,
        blur: 2,
        useSafeArea: false,
        dismissable: true,
        backgroundColor: AppColors.colorBlack.withOpacity(0.1),
        animationDuration: Duration(milliseconds: 500));
  }

  static showFlushSnackBar(BuildContext context, String message,
      {int seconds = 3}) {
    Flushbar(
      message: message,
      duration: Duration(seconds: seconds),
      messageSize: 17,
      isDismissible: true,
      margin: EdgeInsets.all(20.0),
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
      backgroundGradient: LinearGradient(
          colors: [
            AppColors.colorPrimary,
            AppColors.colorPrimary,
          ],
          begin: const FractionalOffset(0.0, 1.0),
          end: const FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp),
      titleColor: AppColors.colorWhite,
    )..show(context);
  }

  static showActionFlushSnackBar(BuildContext context, String message,
      String actionButtonText, Function onButtonTap,
      {int seconds = 3}) {
    Flushbar(
      message: message,
      duration: Duration(seconds: seconds),
      messageSize: 17,
      isDismissible: true,
      mainButton: FlatButton(
        onPressed: () {
          onButtonTap();
        },
        child: Text(actionButtonText,
        style: TextStyle(
          color: AppColors.colorWhite
        ),),
      ),
      margin: EdgeInsets.all(20.0),
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
      backgroundGradient: LinearGradient(
          colors: [
            AppColors.colorPrimary,
            AppColors.colorPrimary,
          ],
          begin: const FractionalOffset(0.0, 1.0),
          end: const FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp),
      titleColor: AppColors.colorWhite,
    )..show(context);
  }
}
