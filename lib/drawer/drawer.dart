import 'dart:io';
import 'package:flutter/material.dart';
import 'package:new_bmi/common_widgets/flutter_toast.dart';
import 'package:new_bmi/common_widgets/remove_focus.dart';
import 'package:new_bmi/constants/local_images_file.dart';
import 'drawer_listtile.dart';
import 'package:share/share.dart';
import 'package:rating_dialog/rating_dialog.dart';

// ignore: must_be_immutable
class OpenDrawer extends StatefulWidget {
  OpenDrawer({Key key}) : super(key: key);
  @override
  _OpenDrawerState createState() => _OpenDrawerState();
}

class _OpenDrawerState extends State<OpenDrawer> {
  int rating = 0;
  void rate(int rating) {
    setState(() {
      rating = rating;
      if (rating == 0) {
        rating = 0;
      } else if (rating == 1) {
        rating = 0;
      } else if (rating == 2) {
        rating = 0;
      } else if (rating == 3) {
        rating = 0;
      } else if (rating == 4) {
        rating = 0;
        rating = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return RemoveFocuse(
      onClick: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 1.3,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 1.3,
              height: 300,
              child: Image.asset(LocalImagesFile.splash_image),
            ),
            DrawerListtile(
              ontap: () {
                _onRating();
              },
              title: 'Rate Us',
              subtitle: 'Give Us Your Rating & Feedbacks',
              icon: Icons.rate_review,
            ),
            DrawerListtile(
              ontap: () {
                final String url =
                    "flutterRoot/packages/flutter_tools/gradle/flutter.gradle,com.android.application";
                final RenderBox box = context.findRenderObject();
                Share.share(url,
                    sharePositionOrigin:
                        box.localToGlobal(Offset.zero) & box.size);
              },
              title: 'Share',
              subtitle:
                  'Share to know Bmi index ratio of your friend and family',
              icon: Icons.share,
            ),
            DrawerListtile(
              ontap: () {
                _onExit();
              },
              title: 'Exit',
              subtitle: 'Are You Sure You Want to Exit',
              icon: Icons.arrow_forward,
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> _onExit() {
    return showDialog(
      context: context,
      builder: ((BuildContext context) {
        return AlertDialog(
          actionsPadding: EdgeInsets.all(0),
          contentPadding: EdgeInsets.all(0),
          insetPadding: EdgeInsets.all(0),
          buttonPadding: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(24.0))),
          content: Stack(
            children: [
              Container(
                width: 250.0,
                height: 180,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Text(
                        '   Exit',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        children: [
                          SizedBox(width: 16),
                          Expanded(
                            child: Text(
                                "Are you sure you want to Exit the BMI Calculator",
                                maxLines: 2,
                                style: TextStyle(
                                    fontSize: 16.0, color: Colors.black54)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  width: 250,
                  height: 50,
                  padding: EdgeInsets.only(top: 20.0),
                  decoration: BoxDecoration(
                    color: Color(0xffEB0577),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(24.0),
                        bottomRight: Radius.circular(24.0)),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      exit(0);
                    },
                    child: Text(
                      "Exit",
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  Future<dynamic> _onRating() {
    return showDialog(
      context: context,
      builder: ((BuildContext context) {
        return AlertDialog(
          actionsPadding: EdgeInsets.all(0),
          contentPadding: EdgeInsets.all(0),
          insetPadding: EdgeInsets.all(0),
          buttonPadding: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16.0))),
          content: Stack(
            children: [
              Container(
                width: 250.0,
                height: 180,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 70.0, left: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (var i = 1; i <= 5; i++)
                            new GestureDetector(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 2.0, right: 2),
                                child: new Icon(
                                  Icons.star,
                                  size: 30,
                                  color: rating >= i
                                      ? Color(0xffEB0577)
                                      : Colors.grey.withOpacity(.4),
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  rate(i);
                                });
                              },
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  width: 250,
                  height: 50,
                  padding: EdgeInsets.only(top: 20.0),
                  decoration: BoxDecoration(
                    color: Color(0xffEB0577),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0)),
                  ),
                  child: Text(
                    "Rate Us",
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  width: 250,
                  height: 50,
                  padding: EdgeInsets.only(top: 20.0),
                  decoration: BoxDecoration(
                    color: Color(0xffEB0577),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16.0),
                        bottomRight: Radius.circular(16.0)),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Submit",
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  showToast(String text) {
    Fluttertoast.showToast(
      msg: text,
      timeInSecForIosWeb: 5,
    );
  }
}

class Rating extends StatefulWidget {
  @override
  _RatingState createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  void _showRatingDialog() {
    // We use the built in showDialog function to show our Rating Dialog
    showDialog(
        context: context,
        barrierDismissible: true, // set to false if you want to force a rating
        builder: (context) {
          return RatingDialog(
            icon: const FlutterLogo(
                size: 100,
                colors: Colors.red), // set your own image/icon widget
            title: "The Rating Dialog",
            description:
                "Tap a star to set your rating. Add more description here if you want.",
            submitButton: "SUBMIT",
            alternativeButton: "Contact us instead?", // optional
            positiveComment: "We are so happy to hear :)", // optional
            negativeComment: "We're sad to hear :(", // optional
            accentColor: Colors.red, // optional
            onSubmitPressed: (int rating) {
              print("onSubmitPressed: rating = $rating");
              // todo :open the app's page on Google Play / Apple App Store
            },
            onAlternativePressed: () {
              print("onAlternativePressed: do something");
              // todo : maybe you want the user to contact you instead of rating a bad review
            },
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: RaisedButton(
          child: Text("Show Rating Dialog"),
          onPressed: _showRatingDialog,
        ),
      ),
    );
  }
}
