import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:my_first_app/utils/app_colors.dart';
import 'package:my_first_app/utils/toast_utils.dart';
import 'package:my_first_app/widgets/back_button_appbar.dart';
import 'package:my_first_app/widgets/login_text_field_widget.dart';
import 'package:my_first_app/widgets/primary_button.dart';
import 'package:my_first_app/widgets/social_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

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
              'Login',
                  () {},
              isShowBackButton: false,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding:
                  EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/login_image.png',
                        width: 300,
                        height: 300,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 15.0),
                        decoration: BoxDecoration(
                          color: AppColors.colorAccent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: Column(
                          children: [
                            LoginTextFieldWidget(
                                'Phone Number',
                                'Input your phone number',
                                _phoneController,
                                'ic_phone',
                                false,
                                TextInputType.phone),
                            SizedBox(
                              height: 20,
                            ),
                            LoginTextFieldWidget(
                                'Password',
                                'Input your password',
                                _passwordController,
                                'ic_lock',
                                true,
                                TextInputType.text),
                            SizedBox(
                              height: 10,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                onTap: () {},
                                child: Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                    color: AppColors.colorRed,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width,
                              child: PrimaryButton('Login', () {
                                String phoneNumber = _phoneController.text;
                                String password = _passwordController.text;
                                if (phoneNumber.isNotEmpty &&
                                    password.isNotEmpty) {
                                  // _loginUser(phoneNumber, password);
                                } else {
                                  ToastUtils.showFlushSnackBar(
                                      context, 'Please fill all the fields.');
                                }
                              }),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                // Navigator.of(context).pushNamed(signUpRoute);
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Haven't any account? ",
                                    style: TextStyle(
                                        color: AppColors.colorSecondaryText,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    'Sign up',
                                    style: TextStyle(
                                        color: AppColors.colorPrimary,
                                        fontSize: 13,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
  //
  // _loginUser(String phoneNumber, String password) {
  //   FocusManager.instance.primaryFocus?.unfocus();
  //   progressDialog =
  //       ToastUtils.showArsProgressDialog(_scaffoldKey.currentContext!);
  //   progressDialog.show();
  //   httpManager.loginUser(phoneNumber, password).then((response) {
  //     progressDialog.dismiss();
  //     if (response.statusCode == 200) {
  //       final jsonBody = json.decode(response.body);
  //       UserResponse userResponse = UserResponse.fromJson(jsonBody);
  //       if (!userResponse.error) {
  //         saveUserDataToPreference(userResponse);
  //       } else {
  //         ToastUtils.showFlushSnackBar(_scaffoldKey.currentContext!,
  //             'Invalid phone number or password.');
  //       }
  //     }
  //   }).catchError((error) {
  //     if (progressDialog.isShowing) progressDialog.dismiss();
  //     ToastUtils.showFlushSnackBar(
  //         _scaffoldKey.currentContext!, 'Invalid phone number or password.');
  //   });
  // }

  /*Future signInWithFacebook() async {
    // Trigger the sign-in flow
    final LoginResult loginResult = await FacebookAuth.instance.login();

    // Create a credential from the access token
    if (loginResult != null && loginResult.accessToken != null) {
      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(loginResult.accessToken!.token);

      // Once signed in, return the UserCredential
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithCredential(facebookAuthCredential);
      if (userCredential.user != null) {
        _registerUser(
            userCredential.user!.uid,
            'facebook',
            userCredential.user!.displayName ?? '',
            userCredential.user!.email ?? '',
            userCredential.user!.phoneNumber ?? '');
      }
    }
  }*/

  // Future signInWithGoogle() async {
  //   // Trigger the authentication flow
  //   final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
  //
  //   // Obtain the auth details from the request
  //   final GoogleSignInAuthentication? googleAuth =
  //       await googleUser?.authentication;
  //
  //   // Create a new credential
  //   final credential = GoogleAuthProvider.credential(
  //     accessToken: googleAuth?.accessToken,
  //     idToken: googleAuth?.idToken,
  //   );
  //
  //   // Once signed in, return the UserCredential
  //   UserCredential userCredential =
  //       await FirebaseAuth.instance.signInWithCredential(credential);
  //   if (userCredential.user != null) {
  //     _registerUser(
  //         userCredential.user!.uid,
  //         'google',
  //         userCredential.user!.displayName ?? '',
  //         userCredential.user!.email ?? '',
  //         userCredential.user!.phoneNumber ?? '');
  //   }
  // }
  //
  // _registerUser(String socialId, String type, String name, String email,
  //     String phoneNumber) {
  //   progressDialog =
  //       ToastUtils.showArsProgressDialog(_scaffoldKey.currentContext!);
  //   progressDialog.show();
  //   httpManager
  //       .registerUser(name, email, phoneNumber, '', type, socialId)
  //       .then((response) {
  //     if (response.statusCode == 200) {
  //       final jsonBody = json.decode(response.body);
  //       if (jsonBody['msg'] != null) {
  //         BaseResponse baseResponse = BaseResponse.fromJson(jsonBody);
  //         if (baseResponse.msg == "success") {
  //           _loginSocial(socialId, type);
  //         }
  //       } else {
  //         if (jsonBody['error'] == false) {
  //           progressDialog.dismiss();
  //           SocialResponse userResponse = SocialResponse.fromJson(jsonBody);
  //           saveSocialDataToPreference(userResponse);
  //         }
  //       }
  //     } else {
  //       progressDialog.dismiss();
  //       ToastUtils.showFlushSnackBar(
  //           _scaffoldKey.currentContext!, response.body);
  //     }
  //   }).catchError((error) {
  //     progressDialog.dismiss();
  //     ToastUtils.showFlushSnackBar(
  //         _scaffoldKey.currentContext!, error.toString());
  //   });
  // }
  //
  // _loginSocial(String socialId, String type) {
  //   httpManager.loginSocialId(type, socialId).then((response) {
  //     progressDialog.dismiss();
  //     if (response.statusCode == 200) {
  //       final jsonBody = json.decode(response.body);
  //       UserResponse userResponse = UserResponse.fromJson(jsonBody);
  //       if (!userResponse.error) {
  //         saveUserDataToPreference(userResponse);
  //       }
  //     } else {
  //       ToastUtils.showFlushSnackBar(
  //           _scaffoldKey.currentContext!, response.body);
  //     }
  //   }).catchError((error) {
  //     progressDialog.dismiss();
  //     ToastUtils.showFlushSnackBar(
  //         _scaffoldKey.currentContext!, error.toString());
  //   });
  // }
  //
  // saveUserDataToPreference(UserResponse userResponse) async {
  //   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //   await sharedPreferences.setInt(userId, userResponse.user.id);
  //   await sharedPreferences.setString(userName, userResponse.user.name);
  //   await sharedPreferences.setString(userEmail, userResponse.user.email);
  //   await sharedPreferences.setString(userPhone, userResponse.user.mobileNo);
  //   await sharedPreferences.setString(userAuthToken, '');
  //   await sharedPreferences.setString(userImage, userResponse.user.image);
  //   await sharedPreferences.setString(userType, userResponse.user.type);
  //   await sharedPreferences.setBool(isUserLoggedIn, true);
  //   Navigator.of(context)
  //       .pushNamedAndRemoveUntil(homePageRoute, (route) => false);
  // }
  //
  // saveSocialDataToPreference(SocialResponse userResponse) async {
  //   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //   await sharedPreferences.setInt(userId, userResponse.user.id);
  //   await sharedPreferences.setString(userName, userResponse.user.name);
  //   await sharedPreferences.setString(userEmail, userResponse.user.email);
  //   await sharedPreferences.setString(userPhone, userResponse.user.mobileNo);
  //   await sharedPreferences.setString(userAuthToken, '');
  //   await sharedPreferences.setString(userImage, userResponse.user.image);
  //   await sharedPreferences.setString(userType, userResponse.user.type);
  //   await sharedPreferences.setBool(isUserLoggedIn, true);
  //   Navigator.of(context)
  //       .pushNamedAndRemoveUntil(homePageRoute, (route) => false);
  // }

