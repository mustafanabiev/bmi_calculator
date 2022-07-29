import 'package:flutter/material.dart';
import 'package:flutter_application_9/app/app_constants/app_text/app_text.dart';
import 'package:flutter_application_9/app/app_widgets/button.dart';
import 'package:flutter_application_9/app/utils/formula.dart';

// ignore: must_be_immutable
class ResultsPage extends StatefulWidget {
  Logic logic = Logic();
  int weight;
  int height;
  int age;
  ResultsPage(
      {Key? key, required this.weight, required this.height, required this.age})
      : super(key: key) {}

  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  Logic logic = Logic();
  double bmiResult = 0;

  @override
  void initState() {
    bmiResult = logic.calculateBMI(widget.height, widget.weight);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(context),
    );
  }

  AppBar _appBar() {
    return AppBar(
      centerTitle: true,
      title: const Text(AppText.resultAppBarText),
    );
  }

  Column _body(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          AppText.result,
          style: TextStyle(fontSize: 30.0),
        ),
        Dialog(
          child: SizedBox(
            height: 350.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  logic.getResult(
                    bmiResult.toDouble(),
                  ),
                  style: TextStyle(
                      color: logic.getColors(bmiResult.toInt()),
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  bmiResult.toStringAsFixed(1),
                  style: const TextStyle(color: Colors.blue, fontSize: 50),
                ),
                Text(
                  logic.getResults(
                    bmiResult.toDouble(),
                  ),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: logic.getColors(bmiResult.toInt()),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        Button(
          onTap: () {
            Navigator.pop(context);
          },
          text: AppText.recall,
        ),
      ],
    );
  }
}
