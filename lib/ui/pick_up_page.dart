import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_first_app/utils/app_colors.dart';
import 'package:my_first_app/widgets/back_button_appbar.dart';
import 'package:my_first_app/widgets/primary_button.dart';

class PickUp extends StatefulWidget {
  const PickUp({Key? key}) : super(key: key);

  @override
  _PickUp createState() => _PickUp();
}

class _PickUp extends State<PickUp> {
  bool isChecked = false;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  // final HttpManager httpManager = HttpManager();
  // late ArsProgressDialog progressDialog;

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
              'Pick-Up',
              () {},
              isShowBackButton: false,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 500.0,
                      width: 400.0,
                      // margin:
                      //     EdgeInsets.only(left: 10.0, right: 10.0),
                      decoration: new BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/map_img.png"),
                          fit: BoxFit.cover,
                        ),
                        color: AppColors.colorAccent,
                        //new Color.fromRGBO(255, 0, 0, 0.0),
                        borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(10.0),
                            topRight: const Radius.circular(10.0),
                            bottomLeft: const Radius.circular(10.0),
                            bottomRight: const Radius.circular(10.0)),
                      ),
                    ),

                    Container(
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding:
                              const EdgeInsets.only(top: 10.0, left: 10.0),
                              child: Text(
                                "Estimated Time",
                                style: TextStyle(
                                    color: AppColors.colorSecondaryText,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                  const EdgeInsets.only(top: 5.0, left: 10.0),
                                  child: Text(
                                    "0",
                                    style: TextStyle(
                                        color: AppColors.colorPrimaryText,
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                  const EdgeInsets.only(top: 10.0),
                                  child: Text(
                                    "hr",
                                    style: TextStyle(
                                        color: AppColors.colorPrimaryText,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                  const EdgeInsets.only(top: 5.0),
                                  child: Text(
                                    ":",
                                    style: TextStyle(
                                        color: AppColors.colorPrimaryText,
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                  const EdgeInsets.only(top: 5.0),
                                  child: Text(
                                    "49",
                                    style: TextStyle(
                                        color: AppColors.colorPrimaryText,
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                  const EdgeInsets.only(top: 10.0),
                                  child: Text(
                                    "min",
                                    style: TextStyle(
                                        color: AppColors.colorPrimaryText,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 120.0,
                      width: 400.0,
                      margin:
                          EdgeInsets.only(top:20.0,left: 10.0, right: 10.0,bottom: 10.0),
                      decoration: new BoxDecoration(
                        color: AppColors.colorAccent,
                        //new Color.fromRGBO(255, 0, 0, 0.0),
                        borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(30.0),
                            topRight: const Radius.circular(30.0),
                            bottomLeft: const Radius.circular(30.0),
                            bottomRight: const Radius.circular(30.0)),
                      ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Align(

                                    child: Padding(
                                      padding:
                                      const EdgeInsets.only(top: 15.0, left: 10.0),
                                      child: Text(
                                        "Pickup From",
                                        style: TextStyle(
                                            color: AppColors.colorSecondaryText,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    child: Padding(
                                      padding:
                                      const EdgeInsets.only(top: 5.0, left: 10.0),
                                      child: Text(
                                        "Sharon B.",
                                        style: TextStyle(
                                            color: AppColors.colorPrimaryText,
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    child: Padding(
                                      padding:
                                      const EdgeInsets.only(top: 5.0, left: 10.0),
                                      child: Text(
                                        "2,Jacob Sonola Str..",
                                        style: TextStyle(
                                            color: AppColors.colorSecondaryText,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child:  Container(
                                  width: 50,
                                  height: 50,
                                  margin: EdgeInsets.only(
                                      left: 10.0, right: 10.0, top: 15.0,bottom: 10.0),
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
                                  padding: EdgeInsets.all(14.0),
                                  child: SvgPicture.asset(
                                    'assets/svg/ic_phone.svg',color: AppColors.colorGreen,
                                    width: 10,
                                    height: 10,
                                  ),
                                ),
                              ),
                            ],
                          ),

                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10.0,top: 20.0),
                                child: Text(
                                  "TOTAL",
                                  style: TextStyle(
                                      color: AppColors.colorPrimaryText,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 10.0, top: 5.0, left: 20.0,),
                                child: Text(
                                  "N1000",
                                  style: TextStyle(
                                      color: AppColors.colorPrimaryText,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(top:10.0,left:10.0,bottom: 10.0,right: 10.0),
                            child: Container(
                              height: 60.0,
                              width: 255.0,
                              child: PrimaryButton(
                                'Confirm PickUp',
                                    () {},
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),


                      ],),
                    ),

            ),],
                ),
              ),);



  }
}
