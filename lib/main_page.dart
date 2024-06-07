import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String textdata = '';
  @override
  Widget build(BuildContext context) {
    final typedcontroller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Text Field"),
        backgroundColor: Colors.white,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 247, 211, 211),
              Color.fromARGB(255, 157, 132, 239)
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  labelText: "Type Something ",
                  labelStyle: TextStyle(color: Colors.black),
                ),
                onEditingComplete: () => setState(() {
                  textdata = typedcontroller.text;
                }),
                controller: typedcontroller,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Entered text is:$textdata ",
              style: TextStyle(color: Colors.black, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
