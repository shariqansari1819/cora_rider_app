import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_first_app/utils/app_colors.dart';
import 'package:my_first_app/widgets/back_button_appbar.dart';
import 'package:my_first_app/widgets/primary_button.dart';

class Earnings extends StatefulWidget {
  const Earnings({Key? key}) : super(key: key);

  @override
  _Earnings createState() => _Earnings();
}

class _Earnings extends State<Earnings> {
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
              'Dispatch History',
              () {},
              isShowBackButton: false,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                  child: Column(
                    children: [
                      Container(
                        height: 130.0,
                        width: 400.0,
                        margin:
                            EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
                        decoration: new BoxDecoration(
                          color: AppColors.colorPrimary,
                          //new Color.fromRGBO(255, 0, 0, 0.0),
                          borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(20.0),
                              topRight: const Radius.circular(20.0),
                              bottomLeft: const Radius.circular(20.0),
                              bottomRight: const Radius.circular(20.0)),
                        ),
                        child: Column(
                          children: [
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 30.0),
                                child: Text(
                                  "This Week",
                                  style: TextStyle(
                                      color: AppColors.colorWhite,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text(
                                  "N97,000",
                                  style: TextStyle(
                                      color: AppColors.colorWhite,
                                      fontSize: 26.0,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                left: 10.0,
                                right: 10.0,
                                top: 15.0,
                                bottom: 10.0),
                            width: 150,
                            height: 100,
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
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 20.0),
                                    child: Text(
                                      "Last 30 days",
                                      style: TextStyle(
                                          color: AppColors.colorSecondaryText,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 5.0),
                                      child: Text(
                                        "95",
                                        style: TextStyle(
                                            color: AppColors.colorBlack,
                                            fontSize: 24.0,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 10.0),
                                      child: Text(
                                        "deliveries",
                                        style: TextStyle(
                                            color: AppColors.colorSecondaryText,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: 10.0,
                                right: 10.0,
                                top: 15.0,
                                bottom: 10.0),
                            width: 150,
                            height: 90,
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
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 20.0),
                                    child: Text(
                                      "Last 30 days",
                                      style: TextStyle(
                                          color: AppColors.colorSecondaryText,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding:
                                      const EdgeInsets.only(right: 20.0),
                                      child: Text(
                                        "N350,000",
                                        style: TextStyle(
                                            color: AppColors.colorBlack,
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 840.0,
                        width: 550.0,
                        margin: EdgeInsets.only(top: 20.0),
                        decoration: BoxDecoration(
                          color: AppColors.colorAccent,
                          borderRadius:
                          BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: Expanded(
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15.0,
                                        right: 10.0,
                                        left: 10.0,
                                        bottom: 5.0),
                                    child: Container(
                                      height: 40.0,
                                      width: 100.0,
                                      child: PrimaryButton(
                                        'Today ',
                                            () {},
                                        buttonColor: AppColors.colorPrimary,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15.0,
                                        right: 5.0,
                                        bottom: 5.0),
                                    child: Container(
                                      height: 40.0,
                                      width: 100.0,
                                      child: PrimaryButton(
                                        '7 Days ',
                                            () {},
                                        buttonColor: AppColors.colorSecondaryText,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15.0,
                                        right: 10.0,
                                        left: 5.0,
                                        bottom: 5.0),
                                    child: Container(
                                      height: 40.0,
                                      width: 100.0,
                                      child: PrimaryButton(
                                        '3 Days ',
                                            () {},
                                        buttonColor: AppColors.colorSecondaryText,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                height: 230.0,
                                width: 550.0,
                                margin: EdgeInsets.only(
                                    left: 10.0, right: 10.0, top: 10.0),
                                decoration: new BoxDecoration(
                                  color: AppColors.colorWhite,
                                  //new Color.fromRGBO(255, 0, 0, 0.0),
                                  borderRadius: new BorderRadius.only(
                                      topLeft: const Radius.circular(20.0),
                                      topRight: const Radius.circular(20.0),
                                      bottomLeft:
                                      const Radius.circular(20.0),
                                      bottomRight:
                                      const Radius.circular(20.0)),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            margin: EdgeInsets.only(
                                                left: 10.0, right: 10.0, top: 15.0,bottom: 10.0),
                                            width: 40,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color: AppColors.colorWhite,                                                    borderRadius: BorderRadius.only(
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
                                            padding: EdgeInsets.all(5.0),
                                            child: SvgPicture.asset(
                                              'assets/svg/ic_doller.svg',
                                              width: 10,
                                              height: 10,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5.0, right: 30.0),
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              "Ada Ugonna",
                                              style: TextStyle(
                                                  color: AppColors.colorPrimaryText,
                                                  fontSize: 24.0,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          const EdgeInsets.only(top: 5.0,right: 5.0),
                                          child: Align(
                                            alignment: Alignment.topRight,
                                            child: Text(
                                              "N1,100",
                                              style: TextStyle(
                                                  color: AppColors.colorPrimaryText,
                                                  fontSize: 19.0,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(left: 70.0),
                                      child: Row(
                                        children: <Widget>[
                                          GestureDetector(
                                            onTap: (){
                                              setState(() {
                                                isChecked = !isChecked;
                                              });
                                            },
                                            child: Container(
                                              width: 20,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                  border: Border.all(color: AppColors.colorPrimaryText, width: 2),
                                                  borderRadius: BorderRadius.circular(60)
                                              ),
                                              child: Container(
                                                width: 20,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                    color: isChecked ? Colors.grey : Colors.white,
                                                    borderRadius: BorderRadius.circular(60)
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                          Text("Pick-Up",style: TextStyle(color: AppColors.colorPrimaryText,fontSize: 20.0,fontWeight: FontWeight.w600),)
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5.0,left: 30.0),
                                      child: Text(
                                        "2, jacob Sonola Str, Ogba",
                                        style: TextStyle(
                                            color: AppColors.colorPrimaryText,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(left: 70.0),
                                      child: Row(
                                        children: <Widget>[
                                          GestureDetector(
                                            onTap: (){
                                              setState(() {
                                                isChecked = !isChecked;
                                              });
                                            },
                                            child: Container(
                                              width: 20,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                  border: Border.all(color: AppColors.colorPrimaryText, width: 2),
                                                  borderRadius: BorderRadius.circular(60)
                                              ),
                                              child: Container(
                                                width: 20,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                    color: isChecked ? Colors.grey : Colors.white,
                                                    borderRadius: BorderRadius.circular(60)
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                          Text("Drop-Off",style: TextStyle(color: AppColors.colorPrimaryText,fontSize: 20.0,fontWeight: FontWeight.w600),)
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5.0,left: 30.0),
                                      child: Text(
                                        "4, Adesina Str,Aguda",
                                        style: TextStyle(
                                            color: AppColors.colorPrimaryText,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 30.0),
                                      child: Text(
                                        "Ada Agonna",
                                        style: TextStyle(
                                            color: AppColors.colorPrimaryText,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),

                                  ],

                                ),

                              ),

                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                height: 230.0,
                                width: 550.0,
                                margin: EdgeInsets.only(
                                    left: 10.0, right: 10.0, top: 10.0),
                                decoration: new BoxDecoration(
                                  color: AppColors.colorWhite,
                                  //new Color.fromRGBO(255, 0, 0, 0.0),
                                  borderRadius: new BorderRadius.only(
                                      topLeft: const Radius.circular(20.0),
                                      topRight: const Radius.circular(20.0),
                                      bottomLeft:
                                      const Radius.circular(20.0),
                                      bottomRight:
                                      const Radius.circular(20.0)),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            margin: EdgeInsets.only(
                                                left: 10.0, right: 10.0, top: 15.0,bottom: 10.0),
                                            width: 40,
                                            height: 40,
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
                                                  offset: Offset(0, 3), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            padding: EdgeInsets.all(5.0),
                                            child: SvgPicture.asset(
                                              'assets/svg/ic_card.svg',
                                              width: 10,
                                              height: 10,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5.0, right: 30.0),
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              "Jide Kosoko",
                                              style: TextStyle(
                                                  color: AppColors.colorPrimaryText,
                                                  fontSize: 24.0,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          const EdgeInsets.only(top: 5.0,right: 5.0),
                                          child: Align(
                                            alignment: Alignment.topRight,
                                            child: Text(
                                              "N1,400",
                                              style: TextStyle(
                                                  color: AppColors.colorPrimaryText,
                                                  fontSize: 19.0,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(left: 70.0),
                                      child: Row(
                                        children: <Widget>[
                                          GestureDetector(
                                            onTap: (){
                                              setState(() {
                                                isChecked = !isChecked;
                                              });
                                            },
                                            child: Container(
                                              width: 20,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                  border: Border.all(color: AppColors.colorPrimaryText, width: 2),
                                                  borderRadius: BorderRadius.circular(60)
                                              ),
                                              child: Container(
                                                width: 20,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                    color: isChecked ? Colors.grey : Colors.white,
                                                    borderRadius: BorderRadius.circular(60)
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                          Text("Pick-Up",style: TextStyle(color: AppColors.colorPrimaryText,fontSize: 20.0,fontWeight: FontWeight.w600),)
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5.0,left: 30.0),
                                      child: Text(
                                        "2, jacob Sonola Str, Ogba",
                                        style: TextStyle(
                                            color: AppColors.colorPrimaryText,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(left: 70.0),
                                      child: Row(
                                        children: <Widget>[
                                          GestureDetector(
                                            onTap: (){
                                              setState(() {
                                                isChecked = !isChecked;
                                              });
                                            },
                                            child: Container(
                                              width: 20,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                  border: Border.all(color: AppColors.colorPrimaryText, width: 2),
                                                  borderRadius: BorderRadius.circular(60)
                                              ),
                                              child: Container(
                                                width: 20,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                    color: isChecked ? Colors.grey : Colors.white,
                                                    borderRadius: BorderRadius.circular(60)
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                          Text("Drop-Off",style: TextStyle(color: AppColors.colorPrimaryText,fontSize: 20.0,fontWeight: FontWeight.w600),)
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5.0,left: 30.0),
                                      child: Text(
                                        "4, Adesina Str,Aguda",
                                        style: TextStyle(
                                            color: AppColors.colorPrimaryText,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 30.0),
                                      child: Text(
                                        "Ada Agonna",
                                        style: TextStyle(
                                            color: AppColors.colorPrimaryText,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                height: 230.0,
                                width: 550.0,
                                margin: EdgeInsets.only(
                                    left: 10.0, right: 10.0, top: 10.0,bottom: 10.0),
                                decoration: new BoxDecoration(
                                  color: AppColors.colorWhite,
                                  //new Color.fromRGBO(255, 0, 0, 0.0),
                                  borderRadius: new BorderRadius.only(
                                      topLeft: const Radius.circular(20.0),
                                      topRight: const Radius.circular(20.0),
                                      bottomLeft:
                                      const Radius.circular(20.0),
                                      bottomRight:
                                      const Radius.circular(20.0)),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            margin: EdgeInsets.only(
                                                left: 10.0, right: 10.0, top: 15.0,bottom: 10.0),
                                            width: 40,
                                            height: 40,
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
                                                  offset: Offset(0, 3), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            padding: EdgeInsets.all(5.0),
                                            child: SvgPicture.asset(
                                              'assets/svg/ic_card.svg',
                                              width: 10,
                                              height: 10,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5.0, right: 30.0),
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              "Bimpe folarin",
                                              style: TextStyle(
                                                  color: AppColors.colorPrimaryText,
                                                  fontSize: 24.0,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          const EdgeInsets.only(top: 5.0,right: 5.0),
                                          child: Align(
                                            alignment: Alignment.topRight,
                                            child: Text(
                                              "N900",
                                              style: TextStyle(
                                                  color: AppColors.colorPrimaryText,
                                                  fontSize: 19.0,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(left: 70.0),
                                      child: Row(
                                        children: <Widget>[
                                          GestureDetector(
                                            onTap: (){
                                              setState(() {
                                                isChecked = !isChecked;
                                              });
                                            },
                                            child: Container(
                                              width: 20,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                  border: Border.all(color: AppColors.colorPrimaryText, width: 2),
                                                  borderRadius: BorderRadius.circular(60)
                                              ),
                                              child: Container(
                                                width: 20,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                    color: isChecked ? Colors.grey : Colors.white,
                                                    borderRadius: BorderRadius.circular(60)
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                          Text("Pick-Up",style: TextStyle(color: AppColors.colorPrimaryText,fontSize: 20.0,fontWeight: FontWeight.w600),)
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5.0,left: 30.0),
                                      child: Text(
                                        "2, jacob Sonola Str, Ogba",
                                        style: TextStyle(
                                            color: AppColors.colorPrimaryText,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(left: 70.0),
                                      child: Row(
                                        children: <Widget>[
                                          GestureDetector(
                                            onTap: (){
                                              setState(() {
                                                isChecked = !isChecked;
                                              });
                                            },
                                            child: Container(
                                              width: 20,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                  border: Border.all(color: AppColors.colorPrimaryText, width: 2),
                                                  borderRadius: BorderRadius.circular(60)
                                              ),
                                              child: Container(
                                                width: 20,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                    color: isChecked ? Colors.grey : Colors.white,
                                                    borderRadius: BorderRadius.circular(60)
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                          Text("Drop-Off",style: TextStyle(color: AppColors.colorPrimaryText,fontSize: 20.0,fontWeight: FontWeight.w600),)
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5.0,left: 30.0),
                                      child: Text(
                                        "4, Adesina Str,Aguda",
                                        style: TextStyle(
                                            color: AppColors.colorPrimaryText,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 30.0),
                                      child: Text(
                                        "Ada Agonna",
                                        style: TextStyle(
                                            color: AppColors.colorPrimaryText,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                  ],
                                ),
                              ),



                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
