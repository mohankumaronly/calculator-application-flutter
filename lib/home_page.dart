import 'dart:ffi';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double result = 0;

  final TextEditingController FirstNumberController = TextEditingController();
  final TextEditingController SecondNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Calculator app'),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: FirstNumberController,
                decoration: InputDecoration(border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 35),
              TextField(
                controller: SecondNumberController,
                decoration: InputDecoration(border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 35),
              Container(
                child: Text(
                  'Result : $result',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),
              ),
              SizedBox(height: 35),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      double a = double.parse(FirstNumberController.text) ?? 0;
                      double b = double.parse(SecondNumberController.text) ?? 0;

                      result = a + b;
                    });
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan),
                  child: Text(
                    'ADD',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      double a = double.parse(FirstNumberController.text);
                      double b = double.parse(SecondNumberController.text);

                      result = a - b;
                    });
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan),
                  child: Text(
                    'SUBTRACT',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      double a = double.parse(FirstNumberController.text);
                      double b = double.parse(SecondNumberController.text);

                      result = a * b;
                    });
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan),
                  child: Text(
                    'MULTIPLICATION',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      double a = double.parse(FirstNumberController.text);
                      double b = double.parse(SecondNumberController.text);

                      result = a / b;
                    });
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan),
                  child: Text(
                    'dIVISION',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
