import 'package:flutter/material.dart';
import 'package:flutter_application_9/formula.dart';

class ResultsPage extends StatefulWidget {
  Logic logic = Logic();
  int weight;
  int height;
  int age;
  ResultsPage({@required this.weight, @required this.height, this.age}) {}

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
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Жыйынтык',
            style: TextStyle(fontSize: 30.0),
          ),
          Dialog(
            child: Container(
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
                    '${bmiResult.toStringAsFixed(1)}',
                    style: TextStyle(color: Colors.blue, fontSize: 50),
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
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: double.infinity,
              height: 80.0,
              color: Colors.red,
              child: const Center(
                child: Text(
                  'КАЙРА ЭСЕПТЕ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
