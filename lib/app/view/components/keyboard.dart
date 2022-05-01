import 'package:calculator/app/view/components/button.dart';
import 'package:calculator/app/view/components/button_equals.dart';
import 'package:calculator/app/view/components/button_function.dart';
import 'package:flutter/material.dart';

class Keyboard extends StatefulWidget {
  const Keyboard({Key? key}) : super(key: key);

  @override
  State<Keyboard> createState() => _KeyboardState();
}

class _KeyboardState extends State<Keyboard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ButtonFunction(
                  text: "AC",
                ),
                ButtonFunction(
                  iconData: Icons.highlight_remove_sharp,
                ),
                ButtonFunction(
                  iconData: Icons.percent,
                ),
                ButtonFunction(
                  text: "/",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Button(number: "7"),
                Button(number: "8"),
                Button(number: "9"),
                ButtonFunction(text: "X"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Button(number: "4"),
                Button(number: "5"),
                Button(number: "6"),
                ButtonFunction(
                  iconData: Icons.remove,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Button(number: "1"),
                Button(number: "2"),
                Button(number: "3"),
                ButtonFunction(
                  iconData: Icons.add,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ButtonFunction(
                  iconData: Icons.change_circle_outlined,
                ),
                Button(number: "0"),
                Button(number: ","),
                ButtonEquals()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
