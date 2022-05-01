import 'package:flutter/material.dart';

class ButtonEquals extends StatefulWidget {
  ButtonEquals({Key? key}) : super(key: key);

  @override
  State<ButtonEquals> createState() => _ButtonEqualsState();
}

class _ButtonEqualsState extends State<ButtonEquals> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Center(
              child: Text(
                "=",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
