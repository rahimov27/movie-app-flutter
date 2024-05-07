import 'package:flutter/material.dart';
import 'package:movie_app/common_widgets/blue_button.dart';

class SelectSeats extends StatelessWidget {
  const SelectSeats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B1E25),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Cinema",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            SizedBox(
              height: 8,
            ),
            DropDownWidget(
              sizeOfMenu: double.infinity,
              paddingOfMenu: 259,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Date",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            Row(
              children: [
                DropDownWidget(
                  sizeOfMenu: 150,
                  paddingOfMenu: 39,
                ),
                Spacer(),
                DropDownWidget(
                  sizeOfMenu: 150,
                  paddingOfMenu: 39,
                ),
              ],
            ),
            Spacer(),
            BlueButton(
              myFunc: (){},
              buttonText: 'Checkout',
            ),
          ],
        ),
      ),
    );
  }
}

class DropDownWidget extends StatelessWidget {
  const DropDownWidget(
      {super.key, required this.sizeOfMenu, required this.paddingOfMenu});
  final double sizeOfMenu;
  final double paddingOfMenu;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sizeOfMenu,
      child: DropdownButton<String>(
        dropdownColor: Color(0xff1B1E25),
        disabledHint: Text("Broadway LA"),
        iconSize: 24,
        icon: Padding(
          padding: EdgeInsets.only(left: paddingOfMenu),
          child: Icon(Icons.arrow_drop_down),
        ),
        hint: Text(
          "Choose cinema",
          style: TextStyle(color: Color(0xffB2B5BB), fontSize: 12),
        ),
        style: TextStyle(color: Colors.white, fontSize: 20),
        onChanged: (String? value) {},
        value: null,
        items: ["Hi", "Hello"].map<DropdownMenuItem<String>>(
          (String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          },
        ).toList(),
      ),
    );
  }
}
