import 'package:bmi_calculater/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:themed/themed.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

enum Themes { LIGHT, DARK }

enum Languages { ENGLISH, ARABIC, FRENCH }

enum States { ON, OFF }

class _SettingScreenState extends State<SettingScreen> {
  String language = 'English';
  late String theme = Themes.DARK.name;
  String notification = 'On';

  void _languageDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select a Language'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Text(Languages.ENGLISH.name),
                onTap: () {
                  _chooseLanguage(Languages.ENGLISH.name);
                },
              ),
              ListTile(
                title: Text(Languages.ARABIC.name),
                onTap: () {
                  _chooseLanguage(Languages.ARABIC.name);
                },
              ),
              ListTile(
                title: Text(Languages.FRENCH.name),
                onTap: () {
                  _chooseLanguage(Languages.FRENCH.name);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _themeDialog() async{
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select a Theme'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Text(Themes.LIGHT.name),
                onTap: () {
                  _chooseTheme(Themes.LIGHT.name);
                  Themed.currentTheme = LightTheme;
                },
              ),
              ListTile(
                title: Text(Themes.DARK.name),
                onTap: () {
                  _chooseTheme(Themes.DARK.name);
                  Themed.currentTheme = DarkTheme;
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _notificationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Notification State'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Text(States.ON.name),
                onTap: () {
                  _chooseNotification(States.ON.name);
                },
              ),
              ListTile(
                title: Text(States.OFF.name),
                onTap: () {
                  _chooseNotification(States.OFF.name);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _aboutDialog() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('About Quizzo'),
              content: const Text(
                  'The BMI Calculator app helps you easily calculate your Body Mass Index (BMI) based on your weight and height, providing insights into your health and fitness level.'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Ok'),
                ),
              ],
            ));
  }

  void _chooseTheme(String theme) {
    Navigator.of(context).pop();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('You selected $theme')),
    );
    setState(() {
      this.theme = theme;
    });
  }

  void _chooseLanguage(String language) {
    Navigator.of(context).pop();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('You selected $language')),
    );
    setState(() {
      this.language = language;
    });
  }

  void _chooseNotification(String notification) {
    Navigator.of(context).pop();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('You selected $notification')),
    );
    setState(() {
      this.notification = notification;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Setting",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: MyTheme.textColor,
                  fontSize: 32.sp,
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                "General",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: MyTheme.textColor,
                  fontSize: 22.sp,
                ),
              ),
              SizedBox(height: 10.h),
              ListTile(
                title: const Text(
                  "Theme",
                  style: TextStyle(color: MyTheme.disledColor),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      theme,
                      style: TextStyle(
                          fontSize: 14.sp, color: MyTheme.disledColor),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    const Icon(Icons.arrow_forward_ios)
                  ],
                ),
                onTap: () {
                  _themeDialog();
                },
              ),
              SizedBox(height: 10.h),
              ListTile(
                title: const Text(
                  "Language",
                  style: TextStyle(color: MyTheme.disledColor),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      language,
                      style: TextStyle(
                          fontSize: 14.sp, color: MyTheme.disledColor),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    const Icon(Icons.arrow_forward_ios)
                  ],
                ),
                onTap: () {
                  _languageDialog();
                },
              ),
              SizedBox(height: 10.h),
              ListTile(
                title: const Text(
                  "Notification",
                  style: TextStyle(color: MyTheme.disledColor),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      notification,
                      style: TextStyle(
                          fontSize: 14.sp, color: MyTheme.disledColor),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    const Icon(Icons.arrow_forward_ios)
                  ],
                ),
                onTap: () {
                  _notificationDialog();
                },
              ),
              SizedBox(height: 20.h),
              Text(
                "About",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: MyTheme.textColor,
                  fontSize: 22.sp,
                ),
              ),
              SizedBox(height: 10.h),
              ListTile(
                title: const Text(
                  "About BMI",
                  style: TextStyle(color: MyTheme.disledColor),
                ),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  _aboutDialog();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
