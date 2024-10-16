import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CalculateScreen extends StatefulWidget {
  const CalculateScreen({super.key});

  @override
  State<CalculateScreen> createState() => _CalculateScreenState();
}

class _CalculateScreenState extends State<CalculateScreen> {
  var bmi = 0.0;
  var kategori = "-";
  final formKey = GlobalKey<FormState>();

  TextEditingController cBerat = TextEditingController();
  TextEditingController cTinggi = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hitung BMI',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Form(
        key: formKey,
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Hitung nilai body mass index',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: cBerat,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1),
                          borderRadius: BorderRadius.circular(20)),
                      labelText: 'Berat badan (kg)',
                      hintText: 'Berat badan (kg)'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "nilai berat kosong";
                    }
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: cTinggi,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1),
                          borderRadius: BorderRadius.circular(20)),
                      labelText: 'Tinggi badan (cm)',
                      hintText: 'Tinggi badan (cm)'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "nilai tinggi kosong";
                    }
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        bmi = int.parse(cBerat.text) /
                            pow((int.parse(cTinggi.text) / 100),2);
                        if(bmi < 18.5){
                          kategori = "UNDERWEIGHT";
                        }else if(bmi < 25){
                          kategori = "NORMAL";
                        }else if(bmi < 30){
                          kategori = "OVERWEIGHT";
                        }else if(bmi < 35){
                          kategori = "CLASS I OBESITY";
                        }else if(bmi < 40){
                          kategori = "CLASS II OBESITY";
                        }else{
                          kategori = "CLASS III OBESITY";
                        }
                        setState(() {
                          bmi;
                          kategori;
                        });
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurpleAccent,
                        minimumSize: const Size(140, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        shadowColor: Colors.blue,
                        elevation: 10),
                    child: Text(
                      'Hitung',
                      style: TextStyle(color: Colors.white),
                    )),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'BMI: ${bmi.toStringAsFixed(2)} \n\nKategori: $kategori',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
