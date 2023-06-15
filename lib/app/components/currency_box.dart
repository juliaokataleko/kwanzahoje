import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  const CurrencyBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(
              height: 57,
              child: DropdownButton(
                iconEnabledColor: Colors.red,
                  underline: Container(
                    height: 1,
                    color: Colors.red,
                  ),
                  isExpanded: true,
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
                    borderSide: BorderSide(color: Colors.red)
                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}