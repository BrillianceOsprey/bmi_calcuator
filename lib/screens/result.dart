import 'package:bmi_calculator/components/botton_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import '../components/reusable.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage(
      {Key? key, this.bmiResult, this.resultText, this.interpretation})
      : super(key: key);
  final String? bmiResult;
  final String? resultText;
  final String? interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kTitleTextstyle,
                ),
              ),
            ),
            Expanded(
                flex: 5,
                child: ReusableCard(
                  colour: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        resultText!,
                        style: kResultTextstyle,
                      ),
                      Text(
                        bmiResult!,
                        style: kBmiTextstyle,
                      ),
                      Text(
                        interpretation!,
                        textAlign: TextAlign.center,
                        style: kBodyTextstyle,
                      ),
                      //RE_calculate buttom
                    ],
                  ),
                )),
            BottonButtom(
              buttonTitle: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ));
  }
}
