import 'package:flutter/material.dart';
import 'package:counter_7/drawer.dart';

class DataBudgetPage extends StatefulWidget {
  const DataBudgetPage({super.key});

  @override
  State<DataBudgetPage> createState() => _DataBudgetPageState();
}

class _DataBudgetPageState extends State<DataBudgetPage> {
  static List<String> listJudul = [];
  static List<int> listNominal = [];
  static List<String> listJenis = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Budget'),
      ),

      drawer: buildDrawer(context), // Menambahkan drawer
      body:ListView.builder(
        itemBuilder: (context, index) {
          // Menunjukkan data dalam bentuk Card
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children:[
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          listJudul[index], 
                          style: const TextStyle(fontSize: 25),
                          textAlign: TextAlign.left),
                      ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(listNominal[index].toString(), 
                          style: const TextStyle(fontSize: 20),
                          textAlign: TextAlign.left),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Text(listJenis[index], 
                          style: const TextStyle(fontSize: 15),
                          textAlign: TextAlign.right),
                        ),
                      ),
                    ]
                  ),
                ],
              ),
            ),
          );
        },   
        itemCount: listJudul.length, 
      ),  
    );
  }
}

void addBudget(String judul, int nominal, String jenis){
  _DataBudgetPageState.listJudul.add(judul);
  _DataBudgetPageState.listNominal.add(nominal);
  _DataBudgetPageState.listJenis.add(jenis);
}