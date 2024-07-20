import 'package:calculator_app/provider/calc_prov.dart';
import 'package:calculator_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    super.key,
    required this.label,
    this.textColor = Colors.white,
  });

  final String label;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Provider.of<CalcProvider>(context, listen: false).setValue(label);
      },
      child: Material(
        elevation: 5,
        color: primaryColor,
        borderRadius: BorderRadius.circular(35),
        child: CircleAvatar(
          radius: 36,
          backgroundColor: secondary2Color,
          child: Text(
            label,
            style: TextStyle(
              fontSize: 36,
              color: textColor,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
