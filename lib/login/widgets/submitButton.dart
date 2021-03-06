import 'package:ask_app_ui/login/screen/login.dart';
import 'package:ask_app_ui/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

Widget submitButton() {
  return Builder(
    builder: (context) {
      return InkWell(
        onTap: () {
          Navigator.push(context, PageTransition(type: PageTransitionType.scale,alignment: Alignment.topRight,duration: Duration(seconds: 1), child: LoginPage()));
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(vertical: 13),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: secPrimary.withAlpha(100),
                    offset: const Offset(2, 4),
                    blurRadius: 8,
                    spreadRadius: 2)
              ],
              color: Colors.white),
          child: const Text(
            'Login',
            style: TextStyle(fontSize: subtitleFontSize, color:primary),
          ),
        ),
      );
    }
  );
}
