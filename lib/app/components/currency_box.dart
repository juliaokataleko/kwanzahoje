import 'package:flutter/material.dart';
import 'package:kwanzahoje/app/models/currency_model.dart';

class CurrencyBox extends StatelessWidget {

  final TextEditingController controller;
  final List<CurrencyModel> items;
  final void Function(CurrencyModel? model)? onChanged;
  final CurrencyModel selectedItem;

  const CurrencyBox(
      {super.key,
      required this.controller,
      required this.items,
      required this.onChanged, 
      required this.selectedItem});

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
              child: DropdownButton<CurrencyModel>(
                  iconEnabledColor: Colors.red,
                  underline: Container(
                    height: 1,
                    color: Colors.red,
                  ),
                  isExpanded: true,
                  value: selectedItem,
                  items: items
                      .map((e) =>
                          DropdownMenuItem(value: e, child: Text(e.name)))
                      .toList(),
                  onChanged: onChanged),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 2,
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)),
              ),
              // onChanged: (value) {
              //   print(value);
              // },
            ),
          )
        ],
      ),
    );
  }
}
