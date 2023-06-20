import 'package:flutter/material.dart';
import 'package:kwanzahoje/app/components/currency_box.dart';
import 'package:kwanzahoje/app/controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();

  late HomeController homeController;

  @override
  void initState() {
    // implement initState
    super.initState();

    homeController = HomeController(toText, fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              ClipOval(
                child: Container(
                    width: 130,
                    height: 130,
                    alignment: Alignment.center,
                    child: Image.asset("assets/images/logo.png")),
              ),
              SizedBox(height: 50),
              CurrencyBox(
                controller: toText,
                items: homeController.currencies,
                onChanged: (model) {
                  setState(() {
                    if (model != null) {
                      homeController.toCurrency = model;
                    }
                  });
                },
                selectedItem: homeController.toCurrency,
              ),
              SizedBox(height: 20),
              CurrencyBox(
                selectedItem: homeController.fromCurrency,
                controller: fromText,
                items: homeController.currencies,
                onChanged: (model) {
                  setState(() {
                    if (model != null) {
                      homeController.fromCurrency = model;
                    }
                  });
                },                
              ),
              SizedBox(height: 50),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white),
                    onPressed: () {
                      homeController.convert();
                    },
                    child: Text("Converter")),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
