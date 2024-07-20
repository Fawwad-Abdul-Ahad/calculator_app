import 'package:calculator_app/Widgets/button.dart';
import 'package:calculator_app/Widgets/calculate_button.dart';
import 'package:calculator_app/provider/calc_prov.dart';
import 'package:calculator_app/utils/colors.dart';
import 'package:calculator_app/widgets/TextField.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CalcProvider>(
      builder: (context, provider, _) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: primaryColor,
            title: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: const [
                  Icon(
                    Icons.calculate,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(width: 12),
                  Text(
                    "Calculator",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ],
              ),
            ),
          ),
          body: Container(
            color: primaryColor,
            child: Column(
              children: [
                Textfield(controller: provider.compController),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                  height: 450,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: secondColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Buttons(label: 'C', textColor: Color.fromARGB(255, 255, 197, 7)),
                          Buttons(label: '/', textColor: Color.fromARGB(255, 255, 197, 7)),
                          Buttons(label: 'X', textColor: Color.fromARGB(255, 255, 197, 7)),
                          Buttons(label: 'AC', textColor: Color.fromARGB(255, 255, 197, 7)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Buttons(label: '7'),
                          Buttons(label: '8'),
                          Buttons(label: '9'),
                          Buttons(label: '+', textColor: Color.fromARGB(255, 255, 197, 7)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Buttons(label: '4'),
                          Buttons(label: '5'),
                          Buttons(label: '6'),
                          Buttons(label: '-', textColor: Color.fromARGB(255, 255, 197, 7)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Buttons(label: '1'),
                                    Buttons(label: '2'),
                                    Buttons(label: '3'),
                                  ],
                                ),
                                const SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Buttons(label: '%'),
                                    Buttons(label: '0'),
                                    Buttons(label: '.'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 30),
                          const CalculateButton(),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
