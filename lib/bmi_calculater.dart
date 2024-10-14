import 'dart:math';

import 'package:bmi_calculater/bmi_result.dart';
import 'package:bmi_calculater/setting.dart';
import 'package:bmi_calculater/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BmiCalculater extends StatefulWidget {
  @override
  State<BmiCalculater> createState() => _BmiCalculaterState();
}

enum unites { Cm, In, Ft }

class _BmiCalculaterState extends State<BmiCalculater> {
  Color selectColor = MyTheme.maleColor;

  bool _isMale = true;
  double _height = 170;
  double _height_calc = 170;
  int _weight = 50;
  int _age = 20;
  unites _unite = unites.Cm;

  double getHeight(unites unite, double value) {
    switch (_unite) {
      case unites.In:
        _height_calc = value * 2.54;
        break;
      case unites.Ft:
        _height_calc = value * 30.48;
        break;
      case unites.Cm:
        _height_calc = value;
        break;
    }
    return _height_calc;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyTheme.backgroundColor,
        appBar: AppBar(
          leading: Icon(
            Icons.health_and_safety_outlined,
            color: MyTheme.primary.withOpacity(.8),
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
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _isMale = true;
                            selectColor = MyTheme.maleColor;
                          });
                        },
                        child: Container(
                          decoration: _isMale
                              ? customBoxGradient(
                                  color0: selectColor.withOpacity(.7),
                                  color1: selectColor.withOpacity(.5),
                                  color2: selectColor.withOpacity(.3))
                              : customBox(color: MyTheme.containerColor),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male,
                                size: 100.r,
                                color: _isMale
                                    ? MyTheme.buttonTextColor
                                    : MyTheme.disledColor,
                              ),
                              customText(
                                  "Male",
                                  22,
                                  _isMale
                                      ? MyTheme.buttonTextColor
                                      : MyTheme.disledColor),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.w),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _isMale = false;
                            selectColor = MyTheme.femaleColor;
                          });
                        },
                        child: Container(
                          decoration: _isMale
                              ? customBox(color: MyTheme.containerColor)
                              : customBoxGradient(
                                  color0: selectColor.withOpacity(.7),
                                  color1: selectColor.withOpacity(.5),
                                  color2: selectColor.withOpacity(.3)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                size: 100.r,
                                color: _isMale
                                    ? MyTheme.disledColor
                                    : MyTheme.buttonTextColor,
                              ),
                              customText(
                                  "Female",
                                  22,
                                  _isMale
                                      ? MyTheme.disledColor
                                      : MyTheme.buttonTextColor),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  decoration: customBox(color: MyTheme.containerColor),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            customText("Height", 15, MyTheme.disledColor),
                            Spacer(),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _unite = unites.In;
                                  getHeight(_unite, _height);
                                });
                              },
                              child: CircleAvatar(
                                radius: 20.r,
                                backgroundColor: (_unite == unites.In)
                                    ? MyTheme.primary.withOpacity(.9)
                                    : MyTheme.backgroundColor,
                                child: customText(
                                    unites.In.name,
                                    12,
                                    (_unite == unites.In)
                                        ? MyTheme.buttonTextColor
                                        : MyTheme.disledColor),
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _unite = unites.Ft;
                                  getHeight(_unite, _height);
                                });
                              },
                              child: CircleAvatar(
                                radius: 20.r,
                                backgroundColor: (_unite == unites.Ft)
                                    ? MyTheme.primary.withOpacity(.9)
                                    : MyTheme.backgroundColor,
                                child: customText(
                                    unites.Ft.name,
                                    12,
                                    (_unite == unites.Ft)
                                        ? MyTheme.buttonTextColor
                                        : MyTheme.disledColor),
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _unite = unites.Cm;
                                  getHeight(_unite, _height);
                                });
                              },
                              child: CircleAvatar(
                                radius: 20.r,
                                backgroundColor: (_unite == unites.Cm)
                                    ? MyTheme.primary.withOpacity(.9)
                                    : MyTheme.backgroundColor,
                                child: customText(
                                    unites.Cm.name,
                                    12,
                                    (_unite == unites.Cm)
                                        ? MyTheme.buttonTextColor
                                        : MyTheme.disledColor),
                              ),
                            ),
                          ],
                        )),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              customText(_height.round().toString(), 35,
                                  MyTheme.textColor),
                              SizedBox(
                                width: 5.w,
                              ),
                              customText(_unite.name, 12, MyTheme.disledColor),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Slider(
                            value: _height,
                            min: 80,
                            max: 220,
                            onChanged: (value) {
                              setState(() {
                                _height = value;
                              });
                            },
                            activeColor: MyTheme.primary.withOpacity(.9),
                            inactiveColor: MyTheme.disledColor,
                            thumbColor: MyTheme.buttonTextColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(children: [
                Expanded(
                  child: Container(
                    decoration: customBox(color: MyTheme.containerColor),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(),
                        customText("Weight", 15, MyTheme.disledColor),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  (_weight > 0) ? _weight-- : _weight = 0;
                                });
                              },
                              child: Icon(
                                Icons.remove,
                                color: MyTheme.buttonTextColor,
                              ),
                              backgroundColor: MyTheme.primary.withOpacity(1),
                              mini: true,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            customText(
                                _weight.toString(), 30, MyTheme.textColor),
                            SizedBox(
                              width: 10.w,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  _weight += 5;
                                });
                              },
                              child: Icon(
                                Icons.add,
                                color: MyTheme.buttonTextColor,
                              ),
                              backgroundColor: MyTheme.primary.withOpacity(1),
                              mini: true,
                            ),
                          ],
                        ),
                        const Spacer(),
                        customText("Kg", 12, MyTheme.disledColor),
                        const Spacer()
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Expanded(
                  child: Container(
                    decoration: customBox(color: MyTheme.containerColor),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(),
                        customText("Age", 15, MyTheme.disledColor),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  (_age > 0) ? _age-- : _age = 0;
                                });
                              },
                              child: Icon(
                                Icons.remove,
                                color: MyTheme.buttonTextColor,
                              ),
                              backgroundColor: MyTheme.primary.withOpacity(1),
                              mini: true,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            customText(_age.toString(), 30, MyTheme.textColor),
                            SizedBox(
                              width: 10.w,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  _age += 5;
                                });
                              },
                              child: Icon(
                                Icons.add,
                                color: MyTheme.buttonTextColor,
                              ),
                              backgroundColor: MyTheme.primary.withOpacity(1),
                              mini: true,
                            ),
                          ],
                        ),
                        const Spacer(),
                        customText("Year", 15, MyTheme.disledColor),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
              ]),
            )),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Container(
                decoration: customBox(color: MyTheme.primary.withOpacity(1)),
                width: double.infinity,
                child: MaterialButton(
                  onPressed: () {
                    double result = _weight / pow(getHeight(_unite, _height) / 100, 2);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BmiResult(bmi: result),
                      ),
                    );
                  },
                  height: 80.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      customText("Calculate", 17, MyTheme.buttonTextColor),
                      SizedBox(
                        width: 10.w,
                      ),
                      Icon(
                        Icons.published_with_changes,
                        color: MyTheme.buttonTextColor,
                        size: 22.r,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
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

BoxDecoration customBox({Color color = Colors.white12}) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(10),
  );
}

BoxDecoration customBoxGradient(
    {Color color0 = Colors.white12,
    Color color1 = Colors.white12,
    Color color2 = Colors.white12,
    double rad = 10}) {
  return BoxDecoration(
    gradient:
    LinearGradient(
        colors: [color1, color0,color0, color1],
        begin: Alignment.topRight,
        end: Alignment.bottomLeft),

    borderRadius: BorderRadius.circular(rad),
  );
}
