import 'package:calculator_app/utils/colors.dart';
import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  const Textfield({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {

    return  Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: secondColor,
                  filled: true,
                ),
                style: TextStyle(fontSize: 35,color: Colors.white),
                readOnly: true,
                autofocus: true,
                showCursor: true,
              ),
            );
  }
}