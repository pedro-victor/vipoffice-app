import 'package:flutter/material.dart';

// screens
import 'package:vipoffice/screens/onboarding.dart';
import 'package:vipoffice/screens/home.dart';
import 'package:vipoffice/screens/profile.dart';
import 'package:vipoffice/screens/settings.dart';
import 'package:vipoffice/screens/register.dart';
import 'package:vipoffice/screens/notifications.dart';
import 'package:vipoffice/screens/articles.dart';
import 'package:vipoffice/screens/elements.dart';

void main() => runApp(Vipoffice());

class Vipoffice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Vipoffice',
        theme: ThemeData(fontFamily: 'OpenSans'),
        initialRoute: "/onboarding",
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          "/onboarding": (BuildContext context) => new Onboarding(),
          "/home": (BuildContext context) => new Home(),
          "/profile": (BuildContext context) => new Profile(),
          "/settings": (BuildContext context) => new Settings(),
          "/articles": (BuildContext context) => new Articles(),
          "/elements": (BuildContext context) => new Elements(),
          "/account": (BuildContext context) => new Register(),
          "/notifications": (BuildContext context) => new Notifications(),
        });
  }
}
