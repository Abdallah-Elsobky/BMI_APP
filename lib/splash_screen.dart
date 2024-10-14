
import 'package:bmi_calculater/onboarding_screen.dart';
import 'package:bmi_calculater/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Your main app screen

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;
  final Color backgroundColor = const Color(0xFF040B30);

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _animation = CurvedAnimation(
      parent: _controller!,
      curve: Curves.easeInExpo,
    );

    _controller!.forward();

    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => OnboardingScreen(),
        ),
      );
    });
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.backgroundColor,
      body: FadeTransition(
        opacity: _animation!,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.health_and_safety,
                color: MyTheme.primary,
                size: 150,
              ),
              SizedBox(height: 20.h),
              Text(
                "BMI Calculator",
                style: TextStyle(
                  color: MyTheme.textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 32.sp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
