import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_first_app/utils/app_colors.dart';
import 'package:my_first_app/widgets/back_button_appbar.dart';
import 'package:my_first_app/widgets/primary_button.dart';

class OrderCompleted extends StatefulWidget {
  const OrderCompleted({Key? key}) : super(key: key);

  @override
  _OrderCompleted createState() => _OrderCompleted();
}

class _OrderCompleted extends State<OrderCompleted> {
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
              'Order Completed',
                  () {},
              isShowBackButton: false,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(children: [
                  Container(
                    height: 180.0,
                    width: 400.0,
                    margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
                    decoration: new BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/map_image.png"),
                        fit: BoxFit.cover,
                      ),
                      color: AppColors.colorAccent,
                      //new Color.fromRGBO(255, 0, 0, 0.0),
                      borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(20.0),
                          topRight: const Radius.circular(40.0),
                          bottomLeft: const Radius.circular(20.0),
                          bottomRight: const Radius.circular(30.0)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
                    decoration: new BoxDecoration(
                      color: AppColors.colorAccent,
                      //new Color.fromRGBO(255, 0, 0, 0.0),
                      borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(20.0),
                          topRight: const Radius.circular(20.0),
                          bottomLeft: const Radius.circular(20.0),
                          bottomRight: const Radius.circular(20.0)),
                    ),
                    child: Expanded(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5.0, left: 10.0),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "#Cr295j",
                                      style: TextStyle(
                                          color: AppColors.colorBlack,
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(top: 5.0, right: 5.0),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    height: 30.0,
                                    width: 100.0,
                                    child: PrimaryButton(
                                      'Completed',
                                          () {},
                                      buttonColor: AppColors.colorPrimaryText,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.only(top: 5.0, left: 10.0),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: RichText(
                                text: TextSpan(
                                  text: "Customer: ",
                                  style: TextStyle(
                                      color: AppColors.colorBlack,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Sharon B.',
                                        style: TextStyle(
                                            color: AppColors.colorSecondaryText,
                                            fontWeight: FontWeight.w400)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Divider(
                              thickness: 1.0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Row(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isChecked = !isChecked;
                                    });
                                  },
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppColors.colorSecondaryText,
                                            width: 2),
                                        borderRadius:
                                        BorderRadius.circular(60)),
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          color: isChecked
                                              ? Colors.grey
                                              : Colors.white,
                                          borderRadius:
                                          BorderRadius.circular(60)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Pick-Up",
                                  style: TextStyle(
                                      color: AppColors.colorBlack,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding:
                              const EdgeInsets.only(top: 5.0, left: 40.0),
                              child: Text(
                                "2, jacob Sonola Str, Ogba",
                                style: TextStyle(
                                    color: AppColors.colorSecondaryText,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Row(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isChecked = !isChecked;
                                    });
                                  },
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppColors.colorSecondaryText,
                                            width: 2),
                                        borderRadius:
                                        BorderRadius.circular(60)),
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          color: isChecked
                                              ? Colors.grey
                                              : Colors.white,
                                          borderRadius:
                                          BorderRadius.circular(60)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Drop-Off",
                                  style: TextStyle(
                                      color: AppColors.colorBlack,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding:
                              const EdgeInsets.only(top: 5.0, left: 40.0),
                              child: Text(
                                "4, Adesina Str,Aguda",
                                style: TextStyle(
                                    color: AppColors.colorSecondaryText,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 40.0, bottom: 10.0),
                              child: Text(
                                "Ada Agonna",
                                style: TextStyle(
                                    color: AppColors.colorSecondaryText,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: 10.0, right: 10.0, top: 10.0, bottom: 20.0),
                    decoration: new BoxDecoration(
                      color: AppColors.colorAccent,
                      //new Color.fromRGBO(255, 0, 0, 0.0),
                      borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(20.0),
                          topRight: const Radius.circular(20.0),
                          bottomLeft: const Radius.circular(20.0),
                          bottomRight: const Radius.circular(20.0)),
                    ),
                    child: Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding:
                            const EdgeInsets.only(top: 20.0, left: 10.0),
                            child: Row(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isChecked = !isChecked;
                                    });
                                  },
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppColors.colorSecondaryText,
                                            width: 2),
                                        borderRadius:
                                        BorderRadius.circular(60)),
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          color: isChecked
                                              ? Colors.grey
                                              : Colors.white,
                                          borderRadius:
                                          BorderRadius.circular(60)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Package Type",
                                  style: TextStyle(
                                      color: AppColors.colorBlack,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding:
                              const EdgeInsets.only(top: 5.0, left: 40.0),
                              child: Text(
                                "Customer",
                                style: TextStyle(
                                    color: AppColors.colorSecondaryText,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Row(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isChecked = !isChecked;
                                    });
                                  },
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppColors.colorSecondaryText,
                                            width: 2),
                                        borderRadius:
                                        BorderRadius.circular(60)),
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          color: isChecked
                                              ? Colors.grey
                                              : Colors.white,
                                          borderRadius:
                                          BorderRadius.circular(60)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Payment Method",
                                  style: TextStyle(
                                      color: AppColors.colorBlack,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                height: 30.0,
                                width: 30.0,
                                margin: EdgeInsets.only(left: 35.0,right: 10.0),
                                decoration: new BoxDecoration(
                                  color: AppColors.colorAccent,
                                  // border: Border.all(color: Colors.colorPrimaryText, width: 0.0),
                                  borderRadius: new BorderRadius.all(
                                      Radius.elliptical(100.0, 25.0)),
                                ),
                                child:SvgPicture.asset(
                                  'assets/svg/ic_card.svg',
                                  width: 10,
                                  height: 10,
                                ),),
                              Text(
                                'Card',
                                style: TextStyle(
                                  color: AppColors.colorSecondaryText,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0,bottom: 5.0),
                            child: Divider(
                              thickness: 1.0,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[

                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left:10.0,top: 5.0,bottom: 10.0),
                                      child: Text(
                                        "TOTAL",
                                        style: TextStyle(
                                            color: AppColors.colorBlack,
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 5.0, right: 10.0,bottom: 10.0),
                                      child: Text(
                                        "N1000",
                                        style: TextStyle(
                                            color: AppColors.colorBlack,
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w800),
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                            ],
                          ),
                     ),
                    ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
