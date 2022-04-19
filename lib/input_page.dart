import 'package:flutter/material.dart';
import 'package:flutter_application_9/results_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'enum_file.dart';
import 'results_page.dart';

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedCard;
  double sliderValue = 156;
  int weight = 50;
  int age = 30;
  Color bgColor = Color.fromARGB(255, 46, 44, 44);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCard = Gender.male;
                      });
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.mars,
                            color: Colors.white,
                            size: 100,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'MALE',
                            style: TextStyle(
                              fontSize: 21,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: selectedCard == Gender.male
                              ? Colors.cyan
                              : bgColor),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCard = Gender.female;
                      });
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.venus,
                            color: Colors.white,
                            size: 100,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'FEMALE',
                            style: TextStyle(
                              fontSize: 21,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: selectedCard == Gender.female
                            ? Colors.cyan
                            : bgColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'HEIGHT',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 21.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.ideographic,
                            children: [
                              Text(
                                sliderValue.toString(),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 60.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                'cm',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 21.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          Slider(
                            value: sliderValue,
                            onChanged: (double value) {
                              setState(() {
                                sliderValue = value.roundToDouble();
                              });
                            },
                            inactiveColor: Colors.white,
                            min: 120.0,
                            max: 225.0,
                          ),
                        ]),
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: bgColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'WEIGHR',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 21.0,
                          ),
                        ),
                        Text(
                          '$weight',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 70,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: const CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  color: Colors.lightBlue,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 15.0,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              child: const CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  color: Colors.lightBlue,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: bgColor,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'AGE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 21.0,
                          ),
                        ),
                        Text(
                          '$age',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 70,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  age++;
                                });
                              },
                              child: const CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  color: Colors.lightBlue,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 15.0,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  age--;
                                });
                              },
                              child: const CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  color: Colors.lightBlue,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: bgColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                    child: ResultsPage(
                      height: sliderValue.toInt(),
                      weight: weight,
                      age: age,
                    ),
                  );
                },
              );
            },
            child: Container(
              height: 80.0,
              width: double.infinity,
              color: Colors.red,
              child: const Center(
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
