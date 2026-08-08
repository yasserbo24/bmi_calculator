import 'package:bmi_calculator/services/bmi_calculator.dart';
import 'package:bmi_calculator/widgets/info_card.dart';
import 'package:bmi_calculator/Screens/result_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int age = 10;
  int weight = 75;
  double height = 176;
  bool isMale = true;
  double value = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 215, 205, 244),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 215, 205, 244),
        centerTitle: true,
        title: Text(
          'BMI Calculator',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: _buildUi(),
    );
  }

  Widget _buildUi() {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  width: 100,
                  height: 210,
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Age', style: TextStyle(fontSize: 20)),
                        Text(
                          '$age',
                          style: TextStyle(
                            fontSize: 65,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Slider(
                          padding: EdgeInsets.all(8),
                          value: age.toDouble(),
                          onChanged: (newvalue) =>
                              setState(() => age = newvalue.round()),
                          min: 5,
                          max: 90,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: InfoCard(
                  title: 'Weight',
                  value: weight,
                  onDecreament: () => setState(() => weight--),
                  onIncreament: () => setState(() => weight++),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: Column(
              children: [
                //Height
                const Text('Height (CM)', style: TextStyle(fontSize: 18)),
                Text(
                  '${height.round()}',
                  style: const TextStyle(
                    fontSize: 55,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),
                Slider(
                  value: value,
                  onChanged: (newvalue) =>
                      setState(() => height = value = newvalue),
                  min: 30,
                  max: 190,
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            width: double.infinity,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Gender
                Text('Gender', style: TextStyle(fontSize: 18)),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'male',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      buildSwitcher(),
                      Text(
                        'female',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),

          ElevatedButton(
            onPressed: () {
              BmiCalculator(height, weight.roundToDouble());
            },
            child: Text('calculate'),
          ),
        ],
      ),
    );
  }

  Widget buildSwitcher() => Switch.adaptive(
    value: isMale,
    onChanged: (isMale) => setState(() {
      this.isMale = isMale;
    }),
  );
}
