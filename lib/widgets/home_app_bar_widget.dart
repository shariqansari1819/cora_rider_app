import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_first_app/utils/app_colors.dart';

class HomeAppBarWidget extends StatelessWidget {
  final Function onMenuTap;
  final Function onNotificationTap;

  const HomeAppBarWidget(this.onMenuTap, this.onNotificationTap, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.colorAccent,
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      height: 70,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {
                onMenuTap();
              },
              child: Container(
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
                  'assets/svg/ic_menu.svg',
                  width: 10,
                  height: 10,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {
                onNotificationTap();
              },
              child: Container(
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
                  'assets/svg/ic_notification.svg',
                  width: 10,
                  height: 10,
                ),
              ),
            ),
          ),
          Center(
              child: Image.asset(
            'assets/images/cora_logo.png',
            width: 80,
          ))
        ],
      ),
    );
  }
}
