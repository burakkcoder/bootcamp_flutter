import "package:flutter/material.dart";
import "dart:math";

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1); // bmi 23.54654231321 ise bu metod 23.5 e dönüştürür string olarak.
  }

  String getResult() {
    if (_bmi >= 40) {
      return "İleri Derecede Obez";
    }
    else if (_bmi <= 39.9 && _bmi >= 30) {
      return "Obez";
    }
    else if (_bmi < 29.9 && _bmi >= 25) {
      return "Fazla Kilolu";
    }
    else if (_bmi < 24.9 && _bmi >= 18.5) {
      return "Normal Kilolu";
    }
    else{
      return "Zayıf";
    }
  }

  String getInterpretation() {
    if (_bmi >= 40) {
      return "Kesinlikle doktor gözetimine girmelisin!";
    }
    else if (_bmi <= 39.9 && _bmi >= 30) {
      return "Sıkı bir diyete girmeli ve spora başlamalısın!";
    }
    else if (_bmi < 29.9 && _bmi >= 25) {
      return "Biraz daha spor yapmayı dene!";
    }
    else if (_bmi < 24.9 && _bmi >= 18.5) {
      return "Tebrikler!";
    }
    else{
      return "Biraz daha yemelisin!";
    }
  }

}