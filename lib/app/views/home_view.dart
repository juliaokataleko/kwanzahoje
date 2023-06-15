import 'package:flutter/material.dart';
import 'package:kwanzahoje/app/components/currency_box.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    String value1 = "Kwanza";

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              ClipOval(
                child: Container(
                    width: 130,
                    height: 130,
                    alignment: Alignment.center,
                    child: Image.asset("assets/images/logo.png")),
              ),
              SizedBox(height: 50),
              CurrencyBox(),
              SizedBox(height: 20),
              CurrencyBox(),
              SizedBox(height: 50),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white),
                    onPressed: () {},
                    child: Text("Converter")),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
