import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  List<String> list_Nama = [
    "Sulthon Wagyu Alima",
    "Amir Saiful Dian",
    "Daud Dwi Setiawan",
    "Danial Ibrahim Krisna inyrarigrapari",
    "Lutfi Harun Asih",
    "Vina Zulfikar Ratu",
    "Nana"
  ];

  List<String> list_Email = [
    "sulthon.wagyuA5@yahoo.com",
    "amir.saiful@yahoo.com",
    "daud55@yahoo.com",
    "graparinyariin@yahoo.com",
    "luthfiharun@yahoo.com",
    "vinaRatu@yahoo.com",
    "clifton.nana@hotmail.com"
  ];
  List<String> list_NoTelpon = [
    "0860-3070-6405",
    "0867-439-523",
    "0870-7039-94213",
    "0837-1620-97591",
    "0860-5032-9699",
    "0883-4807-876",
    "0880-8993-5927"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Daftar Kontak Redmi Galaxy XR"),
        ),
        body: ListView(children: [
          for (int i = 0; i < list_Nama.length; i++)
            Container(
              width: double.infinity,
              height: 150,
              margin: EdgeInsets.all(10),
              padding:
                  EdgeInsets.only(left: 30, top: 10, right: 10, bottom: 10),
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  CircleAvatar(),
                  Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        margin: EdgeInsets.only(left: 25, top: 40),
                        height: 130,
                        width: 150,
                        color: Colors.yellow,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(list_Nama[i]),
                            Text(list_Email[i]),
                            Text(list_NoTelpon[i]),
                          ],
                        ),
                      ))
                ],
              ),
            ),
        ]),
      ),
    );
  }
}
