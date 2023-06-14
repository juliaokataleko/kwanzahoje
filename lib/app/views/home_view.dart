import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    String value1 = "Kwanza";

    return Scaffold(
      body: SizedBox(
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
            
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      height: 56,
                      child: DropdownButton(
                          underline: Container(
                            height: 1,
                            color: Colors.red,
                          ),
                          isExpanded: true,
                          value: value1,
                          items: [
                            DropdownMenuItem<String>(
                              value: "Kwanza",
                              child: Text("Kwanza"),
                            ),
                            DropdownMenuItem<String>(
                              value: "Real",
                              child: Text("Real"),
                            ),
                            DropdownMenuItem<String>(
                              value: "Dolar",
                              child: Text("Dólar"),
                            ),
                            DropdownMenuItem<String>(
                              value: "Euro",
                              child: Text("Euro"),
                            ),
                            DropdownMenuItem<String>(
                              value: "Bitcoin",
                              child: Text("Bitcoin"),
                            )
                          ],
                          onChanged: (value) {
                            if (value != null) {
                              value1 = value;
                            }                              

                          }),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  const Expanded(
                    flex: 2,
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.red)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.red)),
                      ),
                    ),
                  )
                ],
              ),
            ),
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
    );
  }
}
