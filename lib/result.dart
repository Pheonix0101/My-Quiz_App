import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase { 
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange!';
    } else {
      resultText = 'You are so bad!';
    }
   // resultText = resultText + '\n ' + 'your quiz score is ' + resultScore .toString();
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          // Text(
          //   resultPhrase,
          //   style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          //   textAlign: TextAlign.center,
          // ),
          Text(
            'your quiz score is $resultScore',
            style: TextStyle(fontSize: 36, color: Colors.blueGrey, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 33),
          MaterialButton(
            
            child: Text(
              

              'Restart Quiz',
              
              style: TextStyle(fontSize: 11,fontWeight:FontWeight.bold),

              
            ),
            textColor: Colors.blue,
            onPressed: () => resetHandler(),
          ),
        ],
      ),
    );
  }
}
