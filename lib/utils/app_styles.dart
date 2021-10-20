import 'package:flutter/material.dart';

import 'app_colors.dart';

final kRegistrationTextFieldStyle = TextStyle(
  fontSize: 15,
  color: AppColors.colorPrimaryText,
  fontWeight: FontWeight.w400,
);

InputDecoration kRegistrationTextFieldDecoration(String hint) {
  return InputDecoration(
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(14.0))),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(14.0))),
      disabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(14.0))),
      filled: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      hintText: hint,
      hintStyle: TextStyle(
        color: AppColors.colorSecondaryText,
      ),
      fillColor: AppColors.colorWhite);
}
