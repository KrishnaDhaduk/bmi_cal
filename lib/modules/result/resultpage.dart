import 'package:flutter/material.dart';
import 'package:new_bmi/bmi_main.dart';
import 'package:new_bmi/common_widgets/reusablecard.dart';
import 'package:new_bmi/constants/constant.dart';

bool islight = true;

class Resultpage extends StatelessWidget {
  Resultpage(
      {@required this.cal, @required this.result, @required this.resulttext});
  final String cal;
  final String result;
  final String resulttext;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 40.0),
          child: Center(child: Text('Result page')),
        ),
        backgroundColor: Color(0xffEB0577),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 10.0),
              child: Center(
                child: Text(
                  'Your Health Result ...!',
                  style: TextStyle(
                      color: islight ? Colors.black : Colors.white,
                      fontSize: 36),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16),
              child: Reusablecard(
                color: inactivecardcolor,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      result.toUpperCase(),
                      maxLines: 3,
                      style: resulttext1textstyle,
                    ),
                    Text(
                      cal,
                      style: resulttext2textstyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        resulttext,
                        textAlign: TextAlign.center,
                        style: resulttext3textstyle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                height: 10,
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
            title: "Re-Calculate",
            ontap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
