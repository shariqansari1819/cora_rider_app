import 'package:flutter/material.dart';
import 'package:my_first_app/utils/app_colors.dart';
import 'package:my_first_app/widgets/back_button_appbar.dart';
import 'package:my_first_app/widgets/menu_app_bar.dart';
import 'package:my_first_app/widgets/menu_tiles.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
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
          'Menu',
              () {},
          isShowBackButton: false,
        ),
            Expanded(
                child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/avatar.png',
                      width: 130,
                      height: 130,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Jonathan',
                      style: TextStyle(
                          color: AppColors.colorPrimaryText,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    MenuTiles('ic_wallet', 'Payment Methods', () {
                      // Navigator.of(context).pushNamed(fundWalletRoute);
                    }),
                    SizedBox(
                      height: 15,
                    ),
                    MenuTiles('ic_recent_deliveries', 'Recent Deliveries', () {
                      // Navigator.of(context).pushNamed(recentDeliveryRoute);
                    }),
                    SizedBox(
                      height: 15,
                    ),
                    MenuTiles('ic_free_deliveries', 'Free Deliveries', () {
                      // Navigator.of(context).pushNamed(freeDeliveryRoute);
                    }),
                    SizedBox(
                      height: 15,
                    ),
                    MenuTiles('ic_user', 'Edit Profile', () {
                      // Navigator.of(context).pushNamed(editProfileRoute);
                    }),
                    SizedBox(
                      height: 15,
                    ),
                    MenuTiles('ic_contact_support', 'Contact Support', () {
                      // Navigator.of(context).pushNamed(contactRoute);
                    }),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
