import 'package:bmi_calculater/bmi_calculater.dart';
import 'package:bmi_calculater/bmi_result.dart';
import 'package:bmi_calculater/onboarding_screen.dart';
import 'package:bmi_calculater/setting.dart';
import 'package:bmi_calculater/splash_screen.dart';
import 'package:bmi_calculater/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:themed/themed.dart';


void main() async{
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


@override
  void initState(){
    Themed.currentTheme = DarkTheme;
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(430, 932),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => Themed(
          child: MaterialApp(
              title: 'BMI',
              theme: ThemeData(),
              // home: SplashScreen(),
            initialRoute: '/',
            routes: {
              '/': (context) => SplashScreen(),
              '/onboarding': (context) => OnboardingScreen(),
              '/bmi_calculator': (context) => BmiCalculater(),
              '/bmi_result': (context) => BmiResult(bmi: 180),
              '/settings': (context) => SettingScreen(),
            },
              debugShowCheckedModeBanner: false,
          ),
        )
    );
  }
}
