import 'package:calculator_app/provider/calc_prov.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Provider.of<CalcProvider>(context, listen: false).setValue("=");
      },
      child: Container(
        height: 140,
        width: 65,
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(30),
        ),
        child: const Center(
          child: Text(
            "=",
            style: TextStyle(
              fontSize: 49,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
