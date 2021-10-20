import 'package:flutter/material.dart';
import 'package:my_first_app/utils/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  final String buttonText;
  final Function onButtonTap;
  final Color buttonColor;

  const PrimaryButton(this.buttonText, this.onButtonTap,
      {Key? key, this.buttonColor = AppColors.colorPrimary})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: ElevatedButton(
        onPressed: () {
          onButtonTap();
        },
        child: Text(
          buttonText,
          style: TextStyle(
              color: AppColors.colorWhite,
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        style: ElevatedButton.styleFrom(
          primary: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
    );
  }
}
