import 'package:flutter/material.dart';
import 'package:submission/calculate_screen.dart';
import 'package:submission/glossary_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalkulator BMI', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CalculateScreen()),
                    );
                  },
                  child: Column(
                    children: [
                      Icon(
                        Icons.add_chart_sharp,
                        size: 150,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 32.0),
                        child: Text(
                          'Hitung BMI',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20,),
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: 30, // <-- SEE HERE
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GlossaryScreen()),
                    );
                  },
                  child: Column(
                    children: [
                      Icon(
                        Icons.abc_sharp,
                        size: 150,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 32.0),
                        child: Text(
                          'Glosarium',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20,),
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
