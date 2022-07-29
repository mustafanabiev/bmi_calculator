import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../app_constants/app_text/app_text.dart';
import '../app_widgets/button.dart';
import '../app_widgets/gender.dart';
import '../app_widgets/weight_and_age.dart';
import '../utils/enum_file.dart';
import 'results_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Gender? selectedCard;
  double sliderValue = 156;
  int weight = 50;
  int age = 30;
  Color bgColor = const Color.fromARGB(255, 46, 44, 44);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: _appBar(),
      body: _body(context),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.black,
      centerTitle: true,
      title: const Text(AppText.appBarText),
    );
  }

  Column _body(BuildContext context) {
    return Column(
      children: [
        _genderWidget(),
        _slider(),
        _weightAndAge(),
        _button(context),
      ],
    );
  }

  Expanded _genderWidget() {
    return Expanded(
      child: Row(
        children: [
          GenderWidget(
            onTap: () {
              setState(
                () {
                  selectedCard = Gender.male;
                },
              );
            },
            icon: const Icon(
              FontAwesomeIcons.mars,
              color: Colors.white,
              size: 100,
            ),
            text: AppText.male,
            color: selectedCard == Gender.male ? Colors.cyan : bgColor,
          ),
          GenderWidget(
            onTap: () {
              setState(
                () {
                  selectedCard = Gender.female;
                },
              );
            },
            icon: const Icon(
              FontAwesomeIcons.venus,
              color: Colors.white,
              size: 100,
            ),
            text: AppText.female,
            color: selectedCard == Gender.female ? Colors.cyan : bgColor,
          ),
        ],
      ),
    );
  }

  Expanded _slider() {
    return Expanded(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              AppText.height,
              style: TextStyle(
                color: Colors.white,
                fontSize: 21.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              sliderValue.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 60.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              AppText.cm,
              style: TextStyle(
                color: Colors.white,
                fontSize: 21.0,
                fontWeight: FontWeight.bold,
              ),
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
          ],
        ),
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: bgColor,
        ),
      ),
    );
  }

  Expanded _weightAndAge() {
    return Expanded(
      child: Row(
        children: [
          WeightAndAge(
            text: AppText.weighr,
            weightText: weight,
            onTapPlus: () {
              setState(
                () {
                  weight++;
                },
              );
            },
            onTapMinus: () {
              setState(
                () {
                  weight--;
                },
              );
            },
            bgColor: bgColor,
          ),
          WeightAndAge(
            text: AppText.age,
            weightText: age,
            onTapPlus: () {
              setState(
                () {
                  age++;
                },
              );
            },
            onTapMinus: () {
              setState(
                () {
                  age--;
                },
              );
            },
            bgColor: bgColor,
          ),
        ],
      ),
    );
  }

  Button _button(BuildContext context) {
    return Button(
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
      text: AppText.calculate,
    );
  }
}
