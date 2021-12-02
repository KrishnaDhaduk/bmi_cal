import 'package:flutter/material.dart';
import 'package:new_bmi/common_widgets/common_button.dart';
import 'package:new_bmi/constants/constant.dart';
import 'package:new_bmi/constants/local_images_file.dart';
import 'package:new_bmi/routes/route_names.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  bool islight = true;
  final PageController controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 24, bottom: 16, right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text(
                  "Welcome",
                  style: TextStyle(
                          color: islight ? Colors.black : Color(0xff8d8e98),
                          fontSize: 35,
                          fontWeight: FontWeight.w500)
                      .copyWith(color: bottomcontainercolor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text(
                  "to BmI calculator",
                  style: TextStyle(
                          color: islight ? Colors.black : Color(0xff8d8e98),
                          fontSize: 35,
                          fontWeight: FontWeight.w500)
                      .copyWith(color: bottomcontainercolor),
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text(
                  "Calculate your BMI Accurately in just a one Click! Only by your height and weight Parameters",
                  style: resulttext1textstyle.copyWith(
                      color: islight ? Colors.black : Colors.white),
                ),
              ),
              SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.only(right: 100.0, left: 16),
                child: CommonButton(
                  radius: 30,
                  onTap: () {
                    NavigationServices(context).gotoBMIMainScreen();
                  },
                  padding: EdgeInsets.only(left: 8, right: 16),
                  buttonTextWidget: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 24.0, right: 16),
                          child: Text(
                            "Calculate Now",
                            style: largebuttontextstyle.copyWith(
                                color: Colors.white),
                          ),
                        ),
                        Icon(
                          Icons.fast_forward,
                          color: Colors.white,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              CarouselSlider(
                items: [
                  Padding(
                    padding: const EdgeInsets.only(top: 24.0, left: 16),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 2,
                      child: Image.asset(LocalImagesFile.splash_image,
                          fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24.0, left: 16),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 2,
                      child: Image.asset(LocalImagesFile.splash1_image,
                          fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24.0, left: 16),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 2,
                      child: Image.asset(LocalImagesFile.splash2_image,
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
                options: CarouselOptions(
                  height: MediaQuery.of(context).size.height / 2,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 1,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 600),
                  viewportFraction: 0.8,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
