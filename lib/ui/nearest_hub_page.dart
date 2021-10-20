import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_first_app/utils/app_colors.dart';
import 'package:my_first_app/widgets/home_app_bar_widget.dart';
import 'package:my_first_app/widgets/login_text_field_widget.dart';
import 'package:my_first_app/widgets/menu_app_bar.dart';
import 'package:my_first_app/widgets/primary_button.dart';
import 'package:my_first_app/widgets/social_button.dart';

class NearestHub extends StatefulWidget {
  const NearestHub({Key? key}) : super(key: key);

  @override
  _NearestHubState  createState() => _NearestHubState ();
}

class _NearestHubState extends State<NearestHub> {
//

  TextEditingController _passwordController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  bool isChecked = false;

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
           HomeAppBarWidget((){

           }, (){

           }),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 15.0),
                        decoration: BoxDecoration(
                          color: AppColors.colorAccent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5.0, right: 5.0),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "How far?",
                                        style: TextStyle(
                                            color: AppColors.colorPrimaryText,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                  SvgPicture.asset(
                                    'assets/svg/ic_phone.svg',
                                    height: 15.0,
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "James",
                                    style: TextStyle(
                                        color: AppColors.colorPrimaryText,
                                        fontSize: 26.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Are you available to work?",
                                    style: TextStyle(
                                        color: AppColors.colorPrimaryText,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10.0, right: 10.0),
                                    child: Container(
                                      height: 50.0,
                                      width: 155.0,
                                      child: PrimaryButton(
                                        'No',
                                        () {},
                                        buttonColor: AppColors.colorPrimaryText,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Container(
                                      height: 50.0,
                                      width: 155.0,
                                      child: PrimaryButton(
                                        'Yes',
                                        () {},
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 220.0,
                        margin:
                            EdgeInsets.only(left: 5.0, right: 5.0, top: 20.0),
                        decoration: BoxDecoration(
                          color: AppColors.colorAccent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 5.0, left: 5.0, right: 5.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              LoginTextFieldWidget(
                                  'Select Your Nearest Hub',
                                  'Ikeja',
                                  _passwordController,
                                  'ic_gps',
                                  false,
                                  TextInputType.text,isDropDownField: true,),

                              Row(
                                children: [
                                  Container(
                                    height: 100.0,
                                    width: 150.0,
                                    margin: EdgeInsets.only(
                                        top: 10.0, left: 5.0, right: 5.0),
                                    decoration: BoxDecoration(
                                      color: AppColors.colorWhite,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                    ),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5.0, top: 20.0),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "Daily Target",
                                              style: TextStyle(
                                                  color: AppColors
                                                      .colorPrimaryText,
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5.0, top: 5.0),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "7/15 deliveries",
                                              style: TextStyle(
                                                  color: AppColors.colorPrimaryText,
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 100.0,
                                    width: 150.0,
                                    margin:
                                        EdgeInsets.only(top: 10.0, left: 5.0),
                                    decoration: BoxDecoration(
                                      color: AppColors.colorWhite,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                    ),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5.0, top: 20.0),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "Amount Earned",
                                              style: TextStyle(
                                                  color: AppColors
                                                      .colorPrimaryText,
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5.0, top: 5.0),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "N35,000",
                                              style: TextStyle(
                                                  color: AppColors.colorPrimaryText,
                                                  fontSize: 24.0,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: [
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
                                            width: 155.0,
                                            child: PrimaryButton(
                                              'Pending ',
                                              () {},
                                              buttonColor: AppColors.colorPrimaryText,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 15.0,
                                              right: 10.0,
                                              bottom: 5.0),
                                          child: Container(
                                            height: 40.0,
                                            width: 155.0,
                                            child: PrimaryButton(
                                              'Completed ',
                                              () {},
                                            ),
                                          ),
                                        ),
                                      ],
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
