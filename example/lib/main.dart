import 'package:flutter/material.dart';
import 'package:login_rtl/login_rtl_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: LoginRtlView(
          isLanguageArabic: true,
          onLogin: (LoginData) {},
          onRecoverPassword: (String) {},
          onSignup: (LoginData) {},
        ));
  }
}
