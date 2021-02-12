import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:orderac/custom/custom_colors.dart';
import 'package:orderac/information/about_user.dart';
import 'package:orderac/screens/root.dart';
import 'package:orderac/services/auth_service.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return StreamProvider<AboutUser>.value(
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Orderac',
        theme: ThemeData(
          textSelectionTheme: TextSelectionThemeData(
            cursorColor: Colors.black,
            selectionColor: Colors.black,
            selectionHandleColor: Colors.black,
          ),
          primaryColor: Colors.white,
          accentColor: customRed,
          scaffoldBackgroundColor: Colors.white,
          buttonTheme: ButtonThemeData(
            textTheme: ButtonTextTheme.primary,
          ),
          iconTheme: IconThemeData(
            color: customCream,
          ),
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: customRed),
          textTheme: TextTheme(
            bodyText1: TextStyle(color: Colors.black),
            bodyText2: TextStyle(color: Colors.black),
            button: TextStyle(color: Colors.black),
            caption: TextStyle(color: Colors.black),
            headline1: TextStyle(color: Colors.black),
            headline2: TextStyle(color: Colors.black),
            headline3: TextStyle(color: Colors.black),
            headline4: TextStyle(color: Colors.black),
            headline5: TextStyle(color: Colors.black),
            headline6: TextStyle(color: Colors.black),
            overline: TextStyle(color: Colors.black),
            subtitle1: TextStyle(color: Colors.black),
            subtitle2: TextStyle(color: Colors.black),
          ),
          cardColor: customDarkCream,
          dialogBackgroundColor: customLightCream,
        ),
        // darkTheme: ThemeData(
        //   primaryColor: customDarkBlack,
        //   accentColor: customRed,
        //   scaffoldBackgroundColor: customDarkBlack,
        //   iconTheme: IconThemeData(
        //     color: customDarkBlack,
        //   ),
        //   floatingActionButtonTheme: FloatingActionButtonThemeData(
        //     backgroundColor: customRed
        //   ),
        //   textTheme: TextTheme(
        //     bodyText1: TextStyle(color: Colors.white),
        //     bodyText2: TextStyle(color: Colors.white),
        //     button: TextStyle(color: Colors.white),
        //     caption: TextStyle(color: Colors.white),
        //     headline1: TextStyle(color: Colors.white),
        //     headline2: TextStyle(color: Colors.white),
        //     headline3: TextStyle(color: Colors.white),
        //     headline4: TextStyle(color: Colors.white),
        //     headline5: TextStyle(color: Colors.white),
        //     headline6: TextStyle(color: Colors.white),
        //     overline: TextStyle(color: Colors.white),
        //     subtitle1: TextStyle(color: Colors.white),
        //     subtitle2: TextStyle(color: Colors.white),
        //   ),
        //   cardColor: customLightBlack,
        //   dialogBackgroundColor: customDarkBlack,
        // ),
        home: Root(),
      ),
    );
  }
}
