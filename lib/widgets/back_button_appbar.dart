import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_first_app/utils/app_colors.dart';

class BackButtonAppBar extends StatelessWidget {
  final String appbarTitle;
  final bool isShowBackButton;
  final Function onBackTap;

  const BackButtonAppBar(this.appbarTitle, this.onBackTap,
      {this.isShowBackButton = true, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.colorAccent,
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      height: 70,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          GestureDetector(
            onTap: () {
              onBackTap();
            },
            child:
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(14),
                    topRight: Radius.circular(14),
                    bottomLeft: Radius.circular(14),
                    bottomRight: Radius.circular(14)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 9,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              padding: EdgeInsets.all(12.0),
              child: SvgPicture.asset(
                'assets/svg/ic_back.svg',
                width: 10,
                height: 10,
              ),
            ),
          ),
          Center(
            child: Text(
              appbarTitle,
              style: TextStyle(
                  color: AppColors.colorPrimaryText,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
