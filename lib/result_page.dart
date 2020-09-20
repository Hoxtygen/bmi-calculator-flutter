import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'file:///C:/Users/Idowuuw/AndroidStudioProjects/bmi-calculator-flutter/lib/components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Text(
                "Your Result",
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Overweight",
                    style: kResultTextStyle,
                  ),
                  Text(
                    "19.23",
                    style: kBMITextStyle,
                  ),
                  Text(
                    "Your BMI is too high, you should eat less and exercise more",
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  )
                ],
              ),
            ),
            flex: 5,
          )
        ],
      ),
    );
  }
}
