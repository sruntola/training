import 'package:covid_19_ui/helpers/appColor.dart';
import 'package:covid_19_ui/pages/homepage/homepage.dart';
import 'package:covid_19_ui/pages/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:global_configuration/global_configuration.dart';

Future<void> main() async {
  // await GlobalConfiguration().loadFromAsset("app_settings");
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(
        primaryColor: AppColors.mainColor,
        textTheme: TextTheme(
            headline1: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
            headline2: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
            bodyText1: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
            headline3: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
            headline4: TextStyle(
                color: AppColors.mainColor,
                fontSize: 22,
                fontWeight: FontWeight.bold),
            headline5: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
            bodyText2: TextStyle(
                color: Colors.black87,
                fontSize: 14,
                fontWeight: FontWeight.w300)),
        // textButtonTheme: TextButtonThemeData(style: ButtonStyle(backgroundColor: )),
      ),
    );
  }
}
