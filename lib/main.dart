import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: () {},
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
                    onPressed: () {},
                    child: Column(
                      children: [
                        Icon(
                          Icons.abc_sharp,
                          size: 150,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 32.0),
                          child: Text(
                            'Glosarium \nKalkulator BMI',
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
      ),
    );
  }
}
