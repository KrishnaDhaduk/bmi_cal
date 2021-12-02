import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:new_bmi/common_widgets/common_button.dart';
import 'package:new_bmi/common_widgets/icon_menu_button.dart';
import 'package:new_bmi/common_widgets/reusablecard.dart';
import 'package:new_bmi/constants/constant.dart';
import 'package:new_bmi/drawer/drawer.dart';
import 'package:new_bmi/modules/bmi_count_function/bmi_count_function.dart.dart';
import 'package:new_bmi/modules/icon_content/icon_content.dart';
import 'package:new_bmi/modules/result/resultpage.dart';

enum Gender {
  male,
  female,
}
bool islight = true;
final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

class BMIMain extends StatefulWidget {
  @override
  _BMIMainState createState() => _BMIMainState();
}

class _BMIMainState extends State<BMIMain> {
  Color malecardcolor = inactivecardcolor;
  Color femalecardcolor = inactivecardcolor;
  Gender selectedgender;
  int height = 164;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawer: OpenDrawer(
            // type: Profile.Logout,
            ),
        appBar: AppBar(
          title: Center(
              child: Padding(
            padding: const EdgeInsets.only(right: 40.0),
            child: Center(child: Text("BMI Calculator")),
          )),
          leading: IconMenuButton(scaffoldKey: _scaffoldKey),
          backgroundColor: Color(0xffEB0577),
        ),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: Reusablecard(
                        onpress: () {
                          setState(() {
                            selectedgender = Gender.male;
                          });
                        },
                        color: selectedgender == Gender.male
                            ? activecardcolor
                            : inactivecardcolor,
                        cardchild: Iconcontent(
                          icon: FontAwesomeIcons.male,
                          label: "Male",
                        ),
                      ),
                    ),
                    SizedBox(width: 24),
                    Expanded(
                      child: Reusablecard(
                        onpress: () {
                          setState(() {
                            selectedgender = Gender.female;
                          });
                        },
                        color: selectedgender == Gender.female
                            ? activecardcolor
                            : inactivecardcolor,
                        cardchild: Iconcontent(
                          icon: FontAwesomeIcons.female,
                          label: "Female",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 4.0, left: 24, right: 24),
                child: Row(
                  children: [
                    Expanded(
                      child: Reusablecard(
                        color: activecardcolor,
                        cardchild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Height",
                              style: TextStyle(
                                  color: islight
                                      ? Colors.black
                                      : Color(0xff8d8e98),
                                  fontSize: 16),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  height.toString(),
                                  style: TextStyle(
                                      color: islight
                                          ? Colors.black
                                          : Color(0xff8d8e98),
                                      fontSize: 35,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'cm',
                                  style: TextStyle(
                                      color: islight
                                          ? Colors.black
                                          : Color(0xff8d8e98),
                                      fontSize: 16),
                                ),
                              ],
                            ),
                            SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                  activeTrackColor: Color(0x39EB1555),
                                  inactiveTrackColor: islight
                                      ? Colors.white
                                      : Color(0xFF8D8E98),
                                  thumbColor: Color(0xffEB1555),
                                  overlayColor: islight
                                      ? Color(0x39EB1555)
                                      : Color(0xFF8D8E98),
                                  trackHeight: 2.0,
                                  thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 10,
                                  ),
                                  overlayShape: RoundSliderOverlayShape(
                                      overlayRadius: 20)),
                              child: Slider(
                                  value: height.toDouble(),
                                  min: 50,
                                  max: 220,
                                  onChanged: (double newvalue) {
                                    setState(() {
                                      height = newvalue.round();
                                    });
                                  }),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24.0),
                      child: Reusablecard(
                        color: activecardcolor,
                        cardchild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Weight",
                              style: TextStyle(
                                  color: islight
                                      ? Colors.black
                                      : Color(0xff8d8e98),
                                  fontSize: 16),
                            ),
                            Text(
                              weight.toString(),
                              style: TextStyle(
                                  color: islight
                                      ? Colors.black
                                      : Color(0xff8d8e98),
                                  fontSize: 35,
                                  fontWeight: FontWeight.w500),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Roundiconbutton(
                                  icon: FontAwesomeIcons.minus,
                                  onpress: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                Roundiconbutton(
                                  icon: FontAwesomeIcons.plus,
                                  onpress: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 24),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 24.0),
                      child: Reusablecard(
                        color: activecardcolor,
                        cardchild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Age",
                              style: TextStyle(
                                  color: islight
                                      ? Colors.black
                                      : Color(0xff8d8e98),
                                  fontSize: 16),
                            ),
                            Text(
                              age.toString(),
                              style: TextStyle(
                                  color: islight
                                      ? Colors.black
                                      : Color(0xff8d8e98),
                                  fontSize: 35,
                                  fontWeight: FontWeight.w500),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Roundiconbutton(
                                  icon: FontAwesomeIcons.minus,
                                  onpress: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                Roundiconbutton(
                                  icon: FontAwesomeIcons.plus,
                                  onpress: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width - 1,
                  color: Colors.grey[400].withOpacity(0.3),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 8),
                    child: Text(
                      'Add',
                      style: TextStyle(
                          color: islight ? Colors.black : Color(0xff8d8e98),
                          fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
            Calculatebutton(
              title: 'Calculate',
              ontap: () {
                final CalfunctionS data =
                    CalfunctionS(weight: weight, height: height);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Resultpage(
                      cal: data.calculation(),
                      result: data.getresult(),
                      resulttext: data.getadvise(),
                    ),
                  ),
                );
              },
            )
          ],
        ));
  }
}

class Calculatebutton extends StatelessWidget {
  Calculatebutton({@required this.title, this.ontap});
  final String title;
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24, bottom: 16, top: 8),
      child: CommonButton(
        buttonTextWidget: Text(
          title,
          style: largebuttontextstyle.copyWith(color: Colors.white),
        ),
        onTap: ontap,
      ),
    );
  }
}

class Roundiconbutton extends StatelessWidget {
  Roundiconbutton({@required this.icon, @required this.onpress});
  final IconData icon;
  final Function onpress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpress,
      child: Icon(
        icon,
        size: 20,
      ),
      elevation: 1.0,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        height: 42.0,
        width: 39.0,
      ),
      fillColor: islight ? Colors.white54 : Color(0xff4c4e5f),
    );
  }
}
