import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_first_app/utils/app_colors.dart';

class MenuTiles extends StatelessWidget {
  final String icon;
  final String title;
  final Function onMenuTap;

  const MenuTiles(this.icon, this.title, this.onMenuTap, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onMenuTap();
      },
      child: Row(
        children: [
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
              'assets/svg/$icon.svg',
              width: 10,
              height: 10,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: TextStyle(
                color: AppColors.colorPrimaryText,
                fontSize: 17,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
