import 'package:bmi_calculator/components/BottomButton.dart';
import 'package:bmi_calculator/components/ReusableCard.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  const ResultsPage({ @required this.bmiResult, @required this.resultText, @required this.interpretation});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALICULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Container(
                child: Text('Your Results',style: kTitleTextStyle,),
              ),
            ),
          ),
          Expanded(
            flex: 5,
              child:ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(resultText.toUpperCase(),style: kResultsTextStyle,),
                    Text(bmiResult,style: kNumberTextStyle.copyWith(fontSize: 100),),
                    Text(interpretation,style: TextStyle(fontSize: 22.0), textAlign: TextAlign.center,),
                  ],
                ),
              ),

          ),
          BottomButton(buttonTitle: 'RE-CALCULATE',onTap: (){
            Navigator.pop(context, MaterialPageRoute(builder: (context)=>InputPage()));
          }),
        ],
      ),



    );
  }
}

