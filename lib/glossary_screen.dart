import 'package:flutter/material.dart';

class GlossaryScreen extends StatelessWidget {
  const GlossaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Glosarium',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.deepPurpleAccent,
          iconTheme: IconThemeData(color: Colors.white)),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 750)
          return GlossaryScreenList();
        else if (constraints.maxWidth <= 950)
          return GlossaryScreenGrid(gridCount: 3);
        else if (constraints.maxWidth <= 1200)
          return GlossaryScreenGrid(gridCount: 4);
        else if (constraints.maxWidth <= 1400)
          return GlossaryScreenGrid(gridCount: 5);
        else
          return GlossaryScreenGrid(gridCount: 6);
      }),
    );
  }
}

class GlossaryScreenList extends StatelessWidget {
  const GlossaryScreenList({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              'Tentang BMI',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(
                  'BMI merupakan kependekan dari Body Mass Index atau Index Masa Tubuh'),
              leading: Icon(Icons.accessibility),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(
                  'BMI dihitung dari pembagian berat badan (dalam kg) dengan tinggi badan (dalam m)'),
              leading: Icon(Icons.accessibility),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(
                  'Nilai dari perhitungan BMI diklasifikasikan ke dalam 6 kelompok kategori'),
              leading: Icon(Icons.accessibility),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Klasifikasi nilai BMI',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Card(
            color: Colors.yellow,
            child: ListTile(
              title: Text('UNDERWEIGHT\nNilai BMI <18.5'),
              leading: Icon(Icons.adb),
            ),
          ),
          Card(
            color: Colors.greenAccent,
            child: ListTile(
              title: Text('NORMAL\n18.5 ≤ Nilai BMI < 25.0'),
              leading: Icon(Icons.adb),
            ),
          ),
          Card(
            color: Colors.yellow,
            child: ListTile(
              title: Text('OVERWEIGHT\n25 ≤ Nilai BMI < 30.0'),
              leading: Icon(Icons.adb),
            ),
          ),
          Card(
            color: Colors.amber,
            child: ListTile(
              title: Text('CLASS I OBESITY\n30 ≤ Nilai BMI < 35.0'),
              leading: Icon(Icons.adb),
            ),
          ),
          Card(
            color: Colors.orange,
            child: ListTile(
              title: Text('CLASS II OBESITY\n35 ≤ Nilai BMI < 40.0'),
              leading: Icon(Icons.adb),
            ),
          ),
          Card(
            color: Colors.redAccent,
            child: ListTile(
              title: Text('CLASS III OBESITY\nNilai BMI ≥ 40.0'),
              leading: Icon(Icons.adb),
            ),
          ),
        ],
      ),
    ));
  }
}

class GlossaryScreenGrid extends StatelessWidget {
  final int gridCount;

  const GlossaryScreenGrid({super.key, required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GridView.count(
      crossAxisCount: gridCount,
      padding: const EdgeInsets.all(40),
      crossAxisSpacing: 20,
      mainAxisSpacing: 15,
      children: <Widget>[
        Card(
          child: ListTile(
            title: Text(
                'BMI merupakan kependekan dari Body Mass Index atau Index Masa Tubuh'),
            leading: Icon(Icons.accessibility),
          ),
        ),
        Card(
          child: ListTile(
            title: Text(
                'BMI dihitung dari pembagian berat badan (dalam kg) dengan tinggi badan (dalam m)'),
            leading: Icon(Icons.accessibility),
          ),
        ),
        Card(
          child: ListTile(
            title: Text(
                'Nilai dari perhitungan BMI diklasifikasikan ke dalam 6 kelompok kategori'),
            leading: Icon(Icons.accessibility),
          ),
        ),
        Card(
          color: Colors.yellow,
          child: ListTile(
            title: Text(
                'BMI dikategorikan UNDERWEIGHT jika nilainya di bawah 18.5'),
            leading: Icon(Icons.adb),
          ),
        ),
        Card(
          color: Colors.greenAccent,
          child: ListTile(
            title: Text(
                'BMI dikategorikan NORMAL jika nilainya di antara 18.6 sampai 25.0'),
            leading: Icon(Icons.adb),
          ),
        ),
        Card(
          color: Colors.yellow,
          child: ListTile(
            title: Text(
                'BMI dikategorikan OVERWEIGHT jika nilainya di antara 25.1 sampai 30.0'),
            leading: Icon(Icons.adb),
          ),
        ),
        Card(
          color: Colors.amber,
          child: ListTile(
            title: Text(
                'BMI dikategorikan CLASS I OBESITY jika nilainya di antara 30.1 sampai 35.0'),
            leading: Icon(Icons.adb),
          ),
        ),
        Card(
          color: Colors.orange,
          child: ListTile(
            title: Text(
                'BMI dikategorikan CLASS II OBESITY jika nilainya di antara 35.1 sampai 40.0'),
            leading: Icon(Icons.adb),
          ),
        ),
        Card(
          color: Colors.redAccent,
          child: ListTile(
            title: Text(
                'BMI dikategorikan CLASS II OBESITY CLASS III OBESITY jika nilainya di atas 40.0'),
            leading: Icon(Icons.adb),
          ),
        ),
      ],
    ));
  }
}
