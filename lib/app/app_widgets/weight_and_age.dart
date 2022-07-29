import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WeightAndAge extends StatelessWidget {
  final Function() onTapPlus;
  final Function() onTapMinus;
  final String text;
  final int weightText;
  final Color bgColor;
  const WeightAndAge({
    Key? key,
    required this.text,
    required this.bgColor,
    required this.weightText,
    required this.onTapPlus,
    required this.onTapMinus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 21.0,
              ),
            ),
            Text(
              '$weightText',
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
                  onTap: onTapPlus,
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
                  onTap: onTapMinus,
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
    );
  }
}
