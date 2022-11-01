import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Belajar Form Flutter",
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController txtNama = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  String nama = "Nama";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Coba'),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: Center(
            child: Column(
              children: <Widget>[
                Text(
                  'Data Input',
                  style: TextStyle(fontSize: 25),
                ),
                TextField(
                  controller: txtNama,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    label: Text('Nama'),
                    border: InputBorder(),
                  ),
                ),
                TextField(
                  controller: txtPassword,
                ),
                Text(nama),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            nama = txtNama.text;
                          });
                        },
                        child: Text('Klik')),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            txtNama.text = "";
                            nama = "";
                          });
                        },
                        child: Text('Klik')),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
