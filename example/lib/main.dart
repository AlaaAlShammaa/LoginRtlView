import 'package:flutter/material.dart';
import 'package:login_rtl/login_rtl_view.dart';

import 'dashboard_screen.dart';

void main() {
  runApp(MyApp());
}

const users = const {
  'alaa@gmail.com': '12345',
  'test@gmail.com': 'test',
};

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.teal,
          accentColor: _colorFromHex("#FF989A"),
          cursorColor: _colorFromHex("#FF989A"),
          textTheme: TextTheme(
            display2: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 45.0,
              color: _colorFromHex("#FF989A"),
            ),
            button: TextStyle(
              fontFamily: 'OpenSans',
            ),
            subhead: TextStyle(fontFamily: 'NotoSans'),
            body1: TextStyle(fontFamily: 'NotoSans'),
          ),
        ),
        home: new Home());
  }
}

class Home extends StatelessWidget {
  Duration get loginTime => Duration(milliseconds: 2250);

  Future<String> _authUser(LoginData data) {
    print('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return 'اسم المستخدم غير موجود';
      }
      if (users[data.name] != data.password) {
        return 'كلمة مرور غير صحيحة';
      }
      return null;
    });
  }

  Future<String> _recoverPassword(String name) {
    print('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'اسم المستخدم غير موجود';
      }
      return null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoginRtlView(
        isLanguageArabic: true,
        onLogin: _authUser,
        title: "",
        logo: "assets/images/social.png",
        onRecoverPassword: _recoverPassword,
        onSignup: _authUser,
        onSubmitAnimationCompleted: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => new DashboardScreen(),
          ));
        },
      ),
    );
  }
}

Color _colorFromHex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
}
