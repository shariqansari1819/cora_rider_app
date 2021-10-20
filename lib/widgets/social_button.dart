import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_first_app/utils/app_colors.dart';

class SocialButton extends StatelessWidget {
  final String buttonText;
  final String icon;
  final Function onButtonTap;

  const SocialButton(this.buttonText, this.icon, this.onButtonTap, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: ElevatedButton.icon(
          onPressed: () {
            onButtonTap();
          },
          icon: SvgPicture.asset(
            'assets/svg/$icon.svg',
            width: 18,
            height: 18,
          ),
          style: ElevatedButton.styleFrom(
              primary: AppColors.colorWhite,
              shadowColor: Colors.grey.withOpacity(0.2),
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(14.0)))),
          label: Text(
            buttonText,
            style: TextStyle(
                color: AppColors.colorPrimaryText,
                fontSize: 15,
                fontWeight: FontWeight.w500),
          )),
    );
  }
}
