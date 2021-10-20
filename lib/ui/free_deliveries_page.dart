import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_first_app/utils/app_colors.dart';
import 'package:my_first_app/widgets/back_button_appbar.dart';
import 'package:my_first_app/widgets/primary_button.dart';

class FreeDeliveriesPage extends StatefulWidget {
  const FreeDeliveriesPage({Key? key}) : super(key: key);

  @override
  _FreeDeliveriesPageState createState() => _FreeDeliveriesPageState();
}

class _FreeDeliveriesPageState extends State<FreeDeliveriesPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size(0, 0),
        child: AppBar(
          brightness: Brightness.light,
          elevation: 0,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            BackButtonAppBar(
              'Get Free Delivery',
              () {
                Navigator.of(context).pop();
              },
              isShowBackButton: false,
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/free_delivery_image.png',
                      width: 250,
                      height: 250,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      height: 0,
                    ),
                    Text(
                      'Get FREE delivery!',
                      style: TextStyle(
                          color: AppColors.colorPrimaryText,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Refer your friend to use Cora with your code and they will get a delivery for just ₦500 while you get a free delivery',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColors.colorSecondaryText,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 15.0),
                      decoration: BoxDecoration(
                        color: AppColors.colorAccent,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 200,
                            decoration: BoxDecoration(
                              color: AppColors.colorWhite,
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
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'CR985',
                                  style: TextStyle(
                                      color: AppColors.colorPrimaryText,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                SvgPicture.asset(
                                  'assets/svg/ic_copy.svg',
                                  width: 20,
                                  height: 20,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 20),
                            decoration: BoxDecoration(
                              color: AppColors.colorWhite,
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
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Text(
                                  'Send your code',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: _buildSendCodeWidget(
                                            'ic_whatsapp')),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                        child: _buildSendCodeWidget(
                                            'ic_facebook')),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                        child:
                                            _buildSendCodeWidget('ic_direct')),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                        child:
                                            _buildSendCodeWidget('ic_twitter'))
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: PrimaryButton('Send Your Code', () {}),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }

  _buildSendCodeWidget(String icon) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: AppColors.colorWhite,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 9,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: SvgPicture.asset(
        'assets/svg/$icon.svg',
        color: AppColors.colorPrimaryDark,
        width: 30,
        height: 30,
      ),
    );
  }
}
