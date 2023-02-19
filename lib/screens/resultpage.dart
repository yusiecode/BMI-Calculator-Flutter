import 'package:bmi_calculator/constants/constants.dart';
import 'package:bmi_calculator/widgets/bottom_button.dart';
import 'package:bmi_calculator/widgets/reusableCard.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String interpretation;
  final String resultText;

  ResultPage(
      {required this.bmiResult,
      required this.interpretation,
      required this.resultText});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0XFF0A0E21),
        appBar: AppBar(
          backgroundColor: const Color(0XFF0A0E21),
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Your Result',
                    style: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: ReusableCard(
                  onPress: () {},
                  colour: kactiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        resultText,
                        style: TextStyle(
                            color: Color(0xFF24D876),
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0),
                      ),
                      Text(
                        bmiResult,
                        style: TextStyle(
                          fontSize: 100.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        interpretation,
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              BottomButton(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  buttonTitle: 'RE-CALCULATE'),
            ],
          ),
        ),
      ),
    );
  }
}
