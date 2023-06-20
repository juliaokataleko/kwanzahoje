import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kwanzahoje/app/controllers/home_controller.dart';

void main() {
  final TextEditingController toText = new TextEditingController();
  final TextEditingController fromText = new TextEditingController();

  final HomeController homeController = HomeController(toText, fromText);

  test("Deve converter de real para kwanza com virgula", () {
    toText.text = "2,0";
    homeController.convert();
    expect(fromText.text, "300.00");
  });


  test("Deve converter de real para kwanza com ponto", () {
    toText.text = "2.0";
    homeController.convert();
    expect(fromText.text, "300.00");
  });

  test("Deve converter de kwanza para real com ponto", () {
    toText.text = "450";

    homeController.toCurrency = homeController.currencies[0];
    homeController.fromCurrency = homeController.currencies[1];

    homeController.convert();
    expect(fromText.text, "3.24");
  });
}
