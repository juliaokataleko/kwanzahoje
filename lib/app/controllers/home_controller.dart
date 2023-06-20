import 'package:flutter/material.dart';
import 'package:kwanzahoje/app/models/currency_model.dart';

class HomeController {
  late List<CurrencyModel> currencies;

  final TextEditingController toText;
  final TextEditingController fromText;

  late CurrencyModel fromCurrency;
  late CurrencyModel toCurrency;

  HomeController(this.toText, this.fromText) {
    currencies = CurrencyModel.getCurrencies();
    toCurrency = currencies[1];
    fromCurrency = currencies[0];
  }

  void convert() {
    String text = toText.text;
    double value = double.tryParse(text.replaceAll(",", ".")) ?? 1.0;
    double returnValue = 0;

    if (fromCurrency.name == "Real") {
      returnValue = value * toCurrency.real;
    } else if (fromCurrency.name == "Dolar") {
      returnValue = value * toCurrency.dolar;
    } else if (fromCurrency.name == "Euro") {
      returnValue = value * toCurrency.euro;
    } else if (fromCurrency.name == "Kwanza") {
      returnValue = value * toCurrency.kwanza;
    } else if (fromCurrency.name == "Bitcoin") {
      returnValue = value * toCurrency.bitcoin;
    } else {}

    fromText.text = returnValue.toStringAsFixed(2);

  }
}
