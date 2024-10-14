import 'package:bmi_calculater/setting.dart';
import 'package:bmi_calculater/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum Category { Underweight, Normal, Overweight, Obese, Unkown }

class BmiResult extends StatelessWidget {

  final double bmi;
  late Color selectColor;
  BmiResult({required this.bmi});


  Category getCategory() {
    if (bmi < 18.5) {
      selectColor = MyTheme.underweightColor;
      return Category.Underweight;
    } else if (bmi < 25) {
      selectColor = MyTheme.normalWeightColor;
      return Category.Normal;
    } else if (bmi < 30) {
      selectColor = MyTheme.overweightColor;
      return Category.Overweight;
    } else if(bmi < 120){
      selectColor = MyTheme.obeseWeightColor;
      return Category.Obese;
    }else{
      selectColor = MyTheme.disledColor;
      return Category.Unkown;
    }
  }

  Color getCategoryColor(Category category) {
 switch (category) {
      case Category.Underweight:
        return Colors.yellow;
      case Category.Normal:
        return Colors.green;
      case Category.Overweight:
        return Colors.orange;
      case Category.Obese:
        return Colors.red;
      default:
        return Colors.blue;
    }
  }


  Widget underWeightDiet(Color title,Color subtitle,Color selector) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      customText("Health Risks:", 15, title),
      SizedBox(
        height: 10.h,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 5.w,
          ),
          CircleAvatar(
            radius: 3,
            backgroundColor: selector,
          ),
          SizedBox(
            width: 5.w,
          ),
          Flexible(
              child: customText("Weakened immune system", 14, subtitle)),
        ],
      ),
      SizedBox(
        height: 5.h,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 5.w,
          ),
          CircleAvatar(
            radius: 3,
            backgroundColor: selector,
          ),
          SizedBox(
            width: 5.w,
          ),
          Flexible(child: customText("Nutrient deficiencies", 14, subtitle)),
        ],
      ),
      SizedBox(
        height: 5.h,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 5.w,
          ),
          CircleAvatar(
            radius: 3,
            backgroundColor: selector,
          ),
          SizedBox(
            width: 5.w,
          ),
          Flexible(
              child: customText(
                  "Increased risk of osteoporosis", 14, subtitle)),
        ],
      ),
      SizedBox(
        height: 10.h,
      ),
      customText("Diet and Nutrition Tips:", 15, title),
      SizedBox(
        height: 10.h,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 5.w,
          ),
          CircleAvatar(
            radius: 3,
            backgroundColor: selector,
          ),
          SizedBox(
            width: 5.w,
          ),
          Flexible(
              child: customText(
                  "Eat More Calories: Focus on high-calorie foods that provide nutrient density, such as nuts, seeds, avocados, healthy oils, and whole grains.",
                  14,
                  subtitle)),
        ],
      ),
      SizedBox(
        height: 5.h,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 5.w,
          ),
          CircleAvatar(
            radius: 3,
            backgroundColor: selector,
          ),
          SizedBox(
            width: 5.w,
          ),
          Flexible(
              child: customText(
                  "Increase Protein Intake: Incorporate lean meats, fish, eggs, dairy, legumes, and protein-rich plant sources.",
                  14,
                  subtitle)),
        ],
      ),
      SizedBox(
        height: 5.h,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 5.w,
          ),
          CircleAvatar(
            radius: 3,
            backgroundColor: selector,
          ),
          SizedBox(
            width: 5.w,
          ),
          Flexible(
              child: customText(
                  "Frequent Meals: Eat more frequent, smaller meals to increase calorie intake without feeling overly full.",
                  14,
                  subtitle)),
        ],
      ),
      SizedBox(
        height: 5.h,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 5.w,
          ),
          CircleAvatar(
            radius: 3,
            backgroundColor: selector,
          ),
          SizedBox(
            width: 5.w,
          ),
          Flexible(
              child: customText(
                  "Healthy Snacks: Include snacks like peanut butter on whole-grain bread, smoothies with yogurt and fruit, and trail mix with nuts and dried fruit.",
                  14,
                  subtitle)),
        ],
      ),
      SizedBox(
        height: 10.h,
      ),
      customText("Lifestyle Recommendations:", 15, title),
      SizedBox(
        height: 10.h,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 5.w,
          ),
          CircleAvatar(
            radius: 3,
            backgroundColor: selector,
          ),
          SizedBox(
            width: 5.w,
          ),
          Flexible(
              child: customText(
                  "Strength Training: Focus on weight lifting and resistance exercises to build muscle mass.",
                  14,
                  subtitle)),
        ],
      ),
      SizedBox(
        height: 5.h,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 5.w,
          ),
          CircleAvatar(
            radius: 3,
            backgroundColor: selector,
          ),
          SizedBox(
            width: 5.w,
          ),
          Flexible(
              child: customText(
                  "Rest and Recovery: Ensure adequate rest to support weight gain and muscle recovery.",
                  14,
                  subtitle)),
        ],
      ),
    ]);
  }

  Widget normalWeightDiet(Color title,Color subtitle,Color selector) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      customText("Health Benefits:", 15, title),
      SizedBox(
        height: 10.h,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 5.w,
          ),
          CircleAvatar(
            radius: 3,
            backgroundColor: selector,
          ),
          SizedBox(
            width: 5.w,
          ),
          Flexible(
              child: customText(
                  "Lower risk of cardiovascular diseases, diabetes, and some cancers.",
                  14,
                  subtitle)),
        ],
      ),
      SizedBox(
        height: 5.h,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 5.w,
          ),
          CircleAvatar(
            radius: 3,
            backgroundColor: selector,
          ),
          SizedBox(
            width: 5.w,
          ),
          Flexible(
              child: customText(
                  "Better energy levels and mental clarity.", 14, subtitle)),
        ],
      ),
      SizedBox(
        height: 10.h,
      ),
      customText("Diet and Nutrition Tips:", 15, title),
      SizedBox(
        height: 10.h,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 5.w,
          ),
          CircleAvatar(
            radius: 3,
            backgroundColor: selector,
          ),
          SizedBox(
            width: 5.w,
          ),
          Flexible(
              child: customText(
                  "Eat a well-balanced diet with proper portions of carbohydrates, proteins, and fats.",
                  14,
                  subtitle)),
        ],
      ),
      SizedBox(
        height: 5.h,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 5.w,
          ),
          CircleAvatar(
            radius: 3,
            backgroundColor: selector,
          ),
          SizedBox(
            width: 5.w,
          ),
          Flexible(
              child: customText(
                  "Ensure a mix of whole grains, lean proteins, healthy fats, fruits, and vegetables.",
                  14,
                  subtitle)),
        ],
      ),
      SizedBox(
        height: 5.h,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 5.w,
          ),
          CircleAvatar(
            radius: 3,
            backgroundColor: selector,
          ),
          SizedBox(
            width: 5.w,
          ),
          Flexible(
              child: customText(
                  "Stay hydrated with plenty of water throughout the day.",
                  14,
                  subtitle)),
        ],
      ),
      SizedBox(
        height: 10.h,
      ),
      customText("Lifestyle Recommendations:", 15, title),
      SizedBox(
        height: 10.h,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 5.w,
          ),
          CircleAvatar(
            radius: 3,
            backgroundColor: selector,
          ),
          SizedBox(
            width: 5.w,
          ),
          Flexible(
              child: customText(
                  "Engage in regular exercise: mix of cardiovascular exercises and strength training.",
                  14,
                  subtitle)),
        ],
      ),
      SizedBox(
        height: 5.h,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 5.w,
          ),
          CircleAvatar(
            radius: 3,
            backgroundColor: selector,
          ),
          SizedBox(
            width: 5.w,
          ),
          Flexible(
              child: customText("Ensure 7-9 hours of quality sleep each night.",
                  14, subtitle)),
        ],
      ),
    ]);
  }

  Widget overweightDiet(Color title,Color subtitle,Color selector) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      customText("Health Risks:", 15, title),
      SizedBox(
        height: 10.h,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 5.w,
          ),
          CircleAvatar(
            radius: 3,
            backgroundColor: selector,
          ),
          SizedBox(
            width: 5.w,
          ),
          Flexible(
              child: customText(
                  "Increased risk of heart disease, type 2 diabetes, and high blood pressure.",
                  14,
                  subtitle)),
        ],
      ),
      SizedBox(
        height: 5.h,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 5.w,
          ),
          CircleAvatar(
            radius: 3,
            backgroundColor: selector,
          ),
          SizedBox(
            width: 5.w,
          ),
          Flexible(
              child: customText(
                  "Potential for joint pain and fatigue.", 14, subtitle)),
        ],
      ),
      SizedBox(
        height: 10.h,
      ),
      customText("Diet and Nutrition Tips:", 15, title),
      SizedBox(
        height: 10.h,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 5.w,
          ),
          CircleAvatar(
            radius: 3,
            backgroundColor: selector,
          ),
          SizedBox(
            width: 5.w,
          ),
          Flexible(
              child: customText(
                  "Focus on portion control and reduce high-calorie, low-nutrient foods.",
                  14,
                  subtitle)),
        ],
      ),
      SizedBox(
        height: 5.h,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 5.w,
          ),
          CircleAvatar(
            radius: 3,
            backgroundColor: selector,
          ),
          SizedBox(
            width: 5.w,
          ),
          Flexible(
              child: customText(
                  "Consume more fiber: whole grains, fruits, vegetables, and legumes.",
                  14,
                  subtitle)),
        ],
      ),
      SizedBox(
        height: 5.h,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 5.w,
          ),
          CircleAvatar(
            radius: 3,
            backgroundColor: selector,
          ),
          SizedBox(
            width: 5.w,
          ),
          Flexible(
              child: customText(
                  "Opt for lean proteins: chicken, turkey, tofu, fish.",
                  14,
                  subtitle)),
        ],
      ),
      SizedBox(
        height: 5.h,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 5.w,
          ),
          CircleAvatar(
            radius: 3,
            backgroundColor: selector,
          ),
          SizedBox(
            width: 5.w,
          ),
          Flexible(
              child: customText(
                  "Incorporate healthy fats: olive oil, avocados, fatty fish.",
                  14,
                  subtitle)),
        ],
      ),
      SizedBox(
        height: 10.h,
      ),
      customText("Lifestyle Recommendations:", 15, title),
      SizedBox(
        height: 10.h,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 5.w,
          ),
          CircleAvatar(
            radius: 3,
            backgroundColor: selector,
          ),
          SizedBox(
            width: 5.w,
          ),
          Flexible(
              child: customText(
                  "Engage in regular cardiovascular exercises like walking or cycling.",
                  14,
                  subtitle)),
        ],
      ),
      SizedBox(
        height: 5.h,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 5.w,
          ),
          CircleAvatar(
            radius: 3,
            backgroundColor: selector,
          ),
          SizedBox(
            width: 5.w,
          ),
          Flexible(
              child: customText(
                  "Incorporate strength training 2-3 times a week.",
                  14,
                  subtitle)),
        ],
      ),
    ]);
  }

  Widget obesityDiet(Color title,Color subtitle,Color selector) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      customText("Health Risks:", 15, title),
      SizedBox(
        height: 10.h,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 5.w,
          ),
          CircleAvatar(
            radius: 3,
            backgroundColor: selector,
          ),
          SizedBox(
            width: 5.w,
          ),
          Flexible(
              child: customText(
                  "Much higher risk of heart disease, diabetes, stroke, and certain cancers.",
                  14,
                  subtitle)),
        ],
      ),
      SizedBox(
        height: 5.h,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 5.w,
          ),
          CircleAvatar(
            radius: 3,
            backgroundColor: selector,
          ),
          SizedBox(
            width: 5.w,
          ),
          Flexible(
              child: customText(
                  "Significant risk of joint pain, fatigue, and reduced mobility.",
                  14,
                  subtitle)),
        ],
      ),
      SizedBox(
        height: 10.h,
      ),
      customText("Diet and Nutrition Tips:", 15, title),
      SizedBox(
        height: 10.h,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 5.w,
          ),
          CircleAvatar(
            radius: 3,
            backgroundColor: selector,
          ),
          SizedBox(
            width: 5.w,
          ),
          Flexible(
              child: customText(
                  "Create a calorie deficit to promote gradual weight loss.",
                  14,
                  subtitle)),
        ],
      ),
      SizedBox(
        height: 5.h,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 5.w,
          ),
          CircleAvatar(
            radius: 3,
            backgroundColor: selector,
          ),
          SizedBox(
            width: 5.w,
          ),
          Flexible(
              child: customText(
                  "Increase intake of fiber-rich foods and reduce processed foods.",
                  14,
                  subtitle)),
        ],
      ),
      SizedBox(
        height: 5.h,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 5.w,
          ),
          CircleAvatar(
            radius: 3,
            backgroundColor: selector,
          ),
          SizedBox(
            width: 5.w,
          ),
          Flexible(
              child: customText(
                  "Focus on lean protein sources like fish, poultry, and plant-based proteins.",
                  14,
                  subtitle)),
        ],
      ),
      SizedBox(
        height: 10.h,
      ),
      customText("Lifestyle Recommendations:", 15, title),
      SizedBox(
        height: 10.h,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 5.w,
          ),
          CircleAvatar(
            radius: 3,
            backgroundColor: selector,
          ),
          SizedBox(
            width: 5.w,
          ),
          Flexible(
              child: customText(
                  "Start with light, consistent physical activity, gradually increasing intensity.",
                  14,
                  subtitle)),
        ],
      ),
      SizedBox(
        height: 5.h,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 5.w,
          ),
          CircleAvatar(
            radius: 3,
            backgroundColor: selector,
          ),
          SizedBox(
            width: 5.w,
          ),
          Flexible(
              child: customText(
                  "Consider consulting a healthcare provider or dietitian for tailored advice.",
                  14,
                  subtitle)),
        ],
      ),
    ]);
  }

  Widget unkownDiet() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      customText("Make Sure about your information (height & weight)", 14, MyTheme.textColor),
    ]);
  }

  Widget categoryInformation() {
    if (getCategory() == Category.Underweight) {
      return underWeightDiet(MyTheme.textColor,MyTheme.disledColor,MyTheme.underweightColor);
    } else if (getCategory() == Category.Normal) {
      return normalWeightDiet(MyTheme.textColor,MyTheme.disledColor,MyTheme.normalWeightColor);
    } else if (getCategory() == Category.Overweight) {
      return overweightDiet(MyTheme.textColor,MyTheme.disledColor,MyTheme.overweightColor);
    } else if(getCategory() == Category.Obese){
      return obesityDiet(MyTheme.textColor,MyTheme.disledColor,MyTheme.obeseWeightColor);
    }else{
      return unkownDiet();
    }
  }


  Widget customSlider(context){
    return Container(
        height: 4,
        child: Row(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    color: getCategoryColor(Category.Underweight),
                  ),
                  (getCategory() == Category.Underweight)
                      ? SliderTheme(
                      data: SliderTheme.of(context)
                          .copyWith(
                        overlayShape:
                        SliderComponentShape
                            .noOverlay,
                      ),
                      child: Slider(
                        value: double.parse(
                            bmi.toStringAsFixed(1)),
                        min: 0,
                        max: 18.4,
                        onChanged: (value) {},
                        activeColor:
                        Colors.transparent,
                        inactiveColor:
                        Colors.transparent,
                        thumbColor: Colors.white,
                      ))
                      : Container(),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: getCategoryColor(Category.Normal),
                child: (getCategory() == Category.Normal)
                    ? SliderTheme(
                  data: SliderTheme.of(context)
                      .copyWith(
                    overlayShape:
                    SliderComponentShape
                        .noOverlay,
                  ),
                  child: Slider(
                    value: double.parse(
                        bmi.toStringAsFixed(1)),
                    min: 18.5,
                    max: 24.9,
                    onChanged: (value) {},
                    activeColor: Colors.transparent,
                    inactiveColor:
                    Colors.transparent,
                    thumbColor: Colors.white,
                  ),
                )
                    : Container(),
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    color: getCategoryColor(Category.Overweight),
                  ),
                  (getCategory() == Category.Overweight)
                      ? SliderTheme(
                      data: SliderTheme.of(context)
                          .copyWith(
                        overlayShape:
                        SliderComponentShape
                            .noOverlay,
                      ),
                      child: Slider(
                        value: double.parse(
                            bmi.toStringAsFixed(1)),
                        min: 25,
                        max: 29.9,
                        onChanged: (value) {},
                        activeColor:
                        Colors.transparent,
                        inactiveColor:
                        Colors.transparent,
                        thumbColor: Colors.white,
                      ))
                      : Container(),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    color: getCategoryColor(Category.Obese),
                  ),
                  (getCategory() == Category.Obese)
                      ? SliderTheme(
                      data: SliderTheme.of(context)
                          .copyWith(
                        overlayShape:
                        SliderComponentShape
                            .noOverlay,
                      ),
                      child: Slider(
                        value: double.parse(
                            bmi.toStringAsFixed(1)),
                        min: 30,
                        max: 120,
                        onChanged: (value) {},
                        activeColor:
                        Colors.transparent,
                        inactiveColor:
                        Colors.transparent,
                        thumbColor: Colors.white,
                      ))
                      : Container(),
                ],
              ),
            ),
          ],
        ));
  }


  @override
  Widget build(BuildContext context) {
    getCategory();
    return Scaffold(
      backgroundColor: MyTheme.backgroundColor,
      appBar: AppBar(
        leading: Icon(
          Icons.health_and_safety_outlined,
          color: selectColor.withOpacity(.9),
          size: 40.r,
        ),
        backgroundColor: MyTheme.backgroundColor,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "BMI Calculator",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: MyTheme.textColor,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingScreen()));
              },
              icon: Icon(
                Icons.settings,
                color: MyTheme.textColor,
                size: 40.r,
              )),
          SizedBox(
            width: 10.w,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customText("Result", 22, MyTheme.textColor),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Container(
                    width: double.infinity,
                    // decoration: customBox(color: selectColor.withOpacity(.5), rad: 10),
                    decoration: customBoxGradient(color0: selectColor.withOpacity(.7),color1: selectColor.withOpacity(.5),color2: selectColor.withOpacity(.3), rad: 10),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              customText("Your BMI is", 15, MyTheme.cardTextColor),
                              Spacer(),
                              customText(getCategory().name, 15, MyTheme.cardTextColor),
                            ],
                          ),
                          Spacer(),
                          customText(bmi.toStringAsFixed(2), 50, MyTheme.cardTextColor),
                          Spacer(),
                          customSlider(context),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),
                )),
            Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Container(
                    width: double.infinity,
                    decoration: customBox(rad: 10,color: MyTheme.containerColor),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            customText(getCategory().name, 25, MyTheme.textColor),
                            SizedBox(
                              height: 20.h,
                            ),
                            categoryInformation(),
                          ],
                        ),
                      ),
                    ),
                  ),
                )),
            Container(
              decoration: customBox(color: selectColor.withOpacity(.9), rad: 10),
              width: double.infinity,
              child: MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                height: 80.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    customText("Re-Calculate", 17, MyTheme.buttonTextColor),
                    SizedBox(
                      width: 10.w,
                    ),
                    Icon(
                      Icons.keyboard_return,
                      color: MyTheme.buttonTextColor,
                      size: 22.r,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget customText(String text, int size, Color color) {
  return Text(
    text,
    style: TextStyle(
      fontWeight: FontWeight.bold,
      color: color,
      fontSize: size.sp,
    ),
  );
}

BoxDecoration customBox({Color color = Colors.white12, double rad = 10}) {
  return BoxDecoration(
    color: color,
    // gradient: LinearGradient(colors: grad),
    borderRadius: BorderRadius.circular(rad),
  );
}


BoxDecoration customBoxGradient({Color color0 = Colors.white12,Color color1 = Colors.white12,Color color2 = Colors.white12, double rad = 10}) {
  return BoxDecoration(
    gradient: LinearGradient(
        colors: [color1,color0,color0,color1],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight
    ),
    borderRadius: BorderRadius.circular(rad),
  );
}