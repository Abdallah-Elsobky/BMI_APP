import 'package:bmi_calculater/bmi_calculater.dart';
import 'package:bmi_calculater/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.backgroundColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: PageView(
                    controller: _pageController,
                    onPageChanged: (index) {
                      setState(() {
                        isLastPage = index == 2;
                      });
                    },
                    children: [
                      buildPage(
                        imagePath: 'assets/svg/onboarding1.svg',
                        title: "Track Your Health",
                        description: "Calculate Your BMI with Ease.",
                      ),
                      buildPage(
                        imagePath: 'assets/svg/onboarding2.svg',
                        title: "Stay Informed",
                        description: "Monitor Your Fitness Journey.",
                      ),
                      buildPage(
                        imagePath: 'assets/svg/onboarding3.svg',
                        title: "Set Your Goals",
                        description: "Achieve a Balanced Lifestyle.",
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              SmoothPageIndicator(
                controller: _pageController,
                count: 3,
                effect: WormEffect(
                  dotHeight: 12,
                  dotWidth: 12,
                  spacing: 8,
                  dotColor: MyTheme.disledColor,
                  activeDotColor: MyTheme.primary,
                ),
              ),
              SizedBox(height: 16),
              isLastPage
                  ? ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BmiCalculater(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: MyTheme.primary,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                    "Get Started",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: MyTheme.buttonTextColor,
                    fontSize: 20.sp,
                  ),
                ),
              )
                  : ElevatedButton(
                onPressed: () {
                  _pageController.nextPage(
                    duration: Duration(milliseconds: 350),
                    curve: Curves.easeIn,
                  );
                },
                child: Container(
                  width: 100.w,
                  child: Center(
                    child: Text(
                        "Next",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyTheme.buttonTextColor,
                        fontSize: 20.sp,
                      ),
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: MyTheme.primary,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildPage({
    required String imagePath,
    required String title,
    required String description,
  }) {
    return Container(
      color: MyTheme.boardColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(imagePath, height: 300.h), // Image for the page
          SizedBox(height: 120.h),
          Text(
            title,
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
              color: MyTheme.buttonTextColor,
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            description,
            style: TextStyle(fontSize: 16.sp, color: MyTheme.buttonTextColor),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
