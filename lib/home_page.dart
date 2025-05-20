import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double result = 0;
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
                decoration: InputDecoration(border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 35),
              TextField(
                decoration: InputDecoration(border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 35),
              Container(child: Text('Result : $result' ,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
              )),
              SizedBox(height: 35),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (
                    
                  ) {},
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
                  onPressed: () {},
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
                  onPressed: () {},
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
                  onPressed: () {},
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
