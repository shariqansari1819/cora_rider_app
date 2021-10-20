import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:my_first_app/utils/app_colors.dart';
import 'package:my_first_app/utils/app_styles.dart';

class LoginTextFieldWidget extends StatefulWidget {
  final String title;
  final String hint;
  final TextEditingController controller;
  final String suffixIcon;
  final bool isPasswordField;
  final TextInputType textInputType;
  final bool isDropDownField;
  final Function? onFieldTap;

  const LoginTextFieldWidget(this.title, this.hint, this.controller,
      this.suffixIcon, this.isPasswordField, this.textInputType,
      {Key? key, this.isDropDownField = false, this.onFieldTap})
      : super(key: key);

  @override
  _LoginTextFieldWidgetState createState() => _LoginTextFieldWidgetState();
}

class _LoginTextFieldWidgetState extends State<LoginTextFieldWidget> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15,
              color: AppColors.colorPrimaryText),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
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
                spreadRadius: 7,
                blurRadius: 9,
                offset: Offset(0, 6), // changes position of shadow
              ),
            ],
          ),
          child: GestureDetector(
            onTap: () {
              if (widget.onFieldTap != null) {
                widget.onFieldTap!();
              }
            },
            child: TextField(
              enabled: !widget.isDropDownField,
              controller: widget.controller,
              obscureText: widget.isPasswordField ? !_passwordVisible : false,
              cursorColor: AppColors.colorPrimary,
              keyboardType: widget.textInputType,
              decoration: widget.isPasswordField
                  ? kRegistrationTextFieldDecoration(widget.hint).copyWith(
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passwordVisible
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: AppColors.colorSecondaryText,
                        ),
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      ),
                      prefixIcon: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(
                              color:
                                  AppColors.colorSecondaryText.withOpacity(0.6),
                              width: 1.0,
                            ),
                          ),
                        ),
                        margin: const EdgeInsets.all(12.0),
                        padding: EdgeInsets.only(right: 10),
                        child: SvgPicture.asset(
                          'assets/svg/${widget.suffixIcon}.svg',
                          width: 17,
                          height: 17,
                        ),
                      ))
                  : kRegistrationTextFieldDecoration(widget.hint).copyWith(
                      suffixIcon: widget.isDropDownField
                          ? Container(
                              margin: const EdgeInsets.all(12.0),
                              padding: EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.keyboard_arrow_down,
                                color: AppColors.colorSecondaryText,
                              ),
                            )
                          : Container(
                              width: 0,
                              height: 0,
                            ),
                      prefixIcon: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(
                              color:
                                  AppColors.colorSecondaryText.withOpacity(0.6),
                              width: 1.0,
                            ),
                          ),
                        ),
                        margin: const EdgeInsets.all(12.0),
                        padding: EdgeInsets.only(right: 10),
                        child: SvgPicture.asset(
                          'assets/svg/${widget.suffixIcon}.svg',
                          width: 17,
                          height: 17,
                        ),
                      ),
                    ),
              style: kRegistrationTextFieldStyle,
            ),
          ),
        )
      ],
    );
  }
}
