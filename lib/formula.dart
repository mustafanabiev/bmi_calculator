import 'dart:math';
import 'package:flutter/material.dart';

class Logic {
  double calculateBMI(int height, int weight) {
    double bmi = weight / pow(height / 100, 2);
    return bmi;
  }

  String getResult(double bmi) {
    if (bmi >= 25) {
      return 'Нормалдуу';
    } else if (bmi > 18) {
      return 'Жакшы';
    } else
      return 'Жакшы эмес';
  }

  Color getColors(int bmi) {
    if (bmi >= 25) {
      return Colors.green;
    } else if (bmi > 18) {
      return Colors.yellow;
    } else {
      return Colors.red;
    }
  }

  String getResults(double bmi) {
    if (bmi >= 25) {
      return 'Сиздин дене салмагыныз нормалдуу. Азаматсыз!';
    } else if (bmi > 18) {
      return 'Сиздин дене салмагыныз  жакшы .';
    } else {
      return 'Сиздин дене салмагыныз жакшы эмес ...';
    }
  }
}
