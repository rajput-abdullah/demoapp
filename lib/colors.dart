import 'package:flutter/material.dart';

Map<int, Color> colorCodes = {
  50: Color.fromRGBO(147, 205, 72, .1),
  100: Color.fromRGBO(147, 205, 72, .2),
  200: Color.fromRGBO(147, 205, 72, .3),
  300: Color.fromRGBO(147, 205, 72, .4),
  400: Color.fromRGBO(147, 205, 72, .5),
  500: Color.fromRGBO(147, 205, 72, .6),
  600: Color.fromRGBO(147, 205, 72, .7),
  700: Color.fromRGBO(147, 205, 72, .8),
  800: Color.fromRGBO(147, 205, 72, .9),
  900: Color.fromRGBO(147, 205, 72, 1),
};

class AppColors{

  static Map<int, Color> customPrimaryColor = {
    50: Color.fromRGBO(188, 28, 28, 0.1),
    100: Color.fromRGBO(188, 28, 28, 0.2),
    200: Color.fromRGBO(188, 28, 28, 0.3),
    300: Color.fromRGBO(188, 28, 28, 0.4),
    400: Color.fromRGBO(188, 28, 28, 0.5),
    500: Color.fromRGBO(188, 28, 28, 0.6),
    600: Color.fromRGBO(188, 28, 28, 0.7),
    700: Color.fromRGBO(188, 28, 28, 0.8),
    800: Color.fromRGBO(188, 28, 28, 0.9),
    900: Color.fromRGBO(188, 28, 28, 1),
  };

  static MaterialColor appMaterialTheme = MaterialColor(0xFFbc1c1c, customPrimaryColor);

  //App colors=======================================

  static final appTheme = Color.fromRGBO(255, 179, 13, 1);
  static final secondaryColor = Color.fromRGBO(51, 51, 51, 1);


  //===================================================

  static const appBgGradient1 = Color.fromRGBO(238, 238, 238, 1);
  static const appBgGradient2 = Color.fromRGBO(227, 236, 245, 1);
  static const appBgGradient3 = Color.fromRGBO(223, 237, 239, 1);
  static const appBgGradient4 = Color.fromRGBO(231, 242, 243, 1);



  //====================================================



  //appBar colors
  static const appBarBorderColor = Color.fromRGBO(223, 223, 223, 1);



  //solid Colors
  static const blackColor = Color.fromRGBO(0, 0, 0, 1);
  static const receivedMessageCard = Color.fromRGBO(234, 234, 234, 1);
  static const whiteColor = Color.fromRGBO(255, 255, 255, 1);
  static const transparentColor = Color.fromRGBO(255, 255, 255, 0);
  static const welcomeButtonSolid = Color.fromRGBO(255, 179, 13, 1);
  static const redSolid = Color.fromRGBO(236, 36, 35, 1);
  static const greenSolid = Color.fromRGBO(21, 102, 0, 1.0);

  //gradients
  static const mainButtonDarkGradient = Color.fromRGBO(255, 175, 0, 1);
  static const mainButtonLightGradient = Color.fromRGBO(255, 175, 0, 0.7);
  // icon colors
  static const iconColor = Color.fromRGBO(255, 196, 66, 1);
  static const iconBackgroundColor = Color.fromRGBO(255, 175, 0, 0.05);
  static const drawerIconBackgroundColor = Color.fromRGBO(255, 251, 242, 1);
  static const searchHereTextColor = Color.fromRGBO(60, 60, 67, 0.6);

  //cardColors
  static const cardColor = Color.fromRGBO(0, 0, 0, 0.1);
  static const cardDescriptionTextColor = Color.fromRGBO(112, 112, 112, 1);
  static const cardItemPriceColor = Color.fromRGBO(0, 0, 0, 0.9);
  static const sentMessageContainer = Color.fromRGBO(255, 207, 101, 1);


  //text Colors
  static const labelColor = Color.fromRGBO(46, 46, 46, 1);
  static const lightGreyBorderColor = Color.fromRGBO(203, 203, 203, 1);
  static const hoursText = Color.fromRGBO(81, 92, 111, 1);
  static const greyColor = Color.fromRGBO(60, 59, 59, 1);
  static const userNameNotificationsScreen = Color.fromRGBO(45, 45, 46, 1);
  static const orderedAFoodNotificationsScreen = Color.fromRGBO(41, 41, 41, 1);

  static const welcomeText = Color.fromRGBO(64, 64, 64, 1);
  static const appBarText = Color.fromRGBO(46, 46, 46, 1);
  static const textFieldHeadingText = Color.fromRGBO(100, 100, 100, 1);
  // static const  textFieldPlaceHolderText = Color.fromRGBO(81, 92, 111, 1);
  static const  textFieldPlaceHolderText = Color.fromRGBO(81, 92, 111, 1);
  static const readPrivacyPolicyText = Color.fromRGBO(20, 20, 20, 1);
  static const privacyPolicyText = Color.fromRGBO(255, 175, 0, 1);
  static const otpStarText = Color.fromRGBO(191, 191, 191, 1);
  static const forgotPasswordText = Color.fromRGBO(175, 175, 175, 1);
  static const redText = Color.fromRGBO(236, 36, 36, 1);
  static const tabOnClick = Color.fromRGBO(249, 249, 249, 1);
  static const areYouSureText = Color.fromRGBO(49, 49, 49, 1);

  //Shadow color
  static const welcomeButtonShadow = Color.fromRGBO(20, 102, 204, 0.16);
  static const textFieldShadow = Color.fromRGBO(231, 234, 240, 1);
  static const otpContainerShadow = Color.fromRGBO(0, 0, 0, 0.06);
}