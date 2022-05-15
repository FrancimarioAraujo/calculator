import 'package:calculator/app/controller/value_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Button extends StatefulWidget {
  Button({Key? key, required this.number}) : super(key: key);
  String number;
  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    ValueController valueController =
        Provider.of<ValueController>(context, listen: true);
    return Expanded(
      child: InkWell(
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        onTap: () {
          valueController.setNumber(widget.number);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Center(
            child: Text(
              widget.number,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
