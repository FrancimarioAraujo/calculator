import 'package:flutter/material.dart';

class ButtonFunction extends StatefulWidget {
  ButtonFunction({Key? key, this.iconData, this.text}) : super(key: key);
  IconData? iconData;
  String? text;
  @override
  State<ButtonFunction> createState() => _ButtonFunctionState();
}

class _ButtonFunctionState extends State<ButtonFunction> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Center(
            child: Container(
              child: widget.iconData != null
                  ? Icon(
                      widget.iconData,
                      size: 30,
                      color: Colors.orange,
                    )
                  : Text(
                      widget.text.toString(),
                      style: const TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
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
