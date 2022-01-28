import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Toasts {

  static getErrorToast({@required String? text}) async {

    await Fluttertoast.showToast(
        backgroundColor: Colors.red,
        textColor: Colors.white,
        msg: text ?? "Please try again",
        timeInSecForIosWeb: 2,
    );
  }

  static getSuccessToast({@required String? text}) async {

    await Fluttertoast.showToast(
        backgroundColor: Colors.blue,
        textColor: Colors.white,
        msg: text ?? "please try again",

    );
  }

  static getWarningToast({@required String? text}) async {

    await Fluttertoast.showToast(
        backgroundColor: Colors.red,
        textColor: Colors.white,
        msg: text ?? "please try again",

    );
  }

}