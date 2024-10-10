import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _textEditingController = TextEditingController();
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text(
            "Converter App ",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(238, 255, 255, 255)),
          ),
          backgroundColor: Color(0xFFF93DFF),
        ),
        

        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CupertinoTextField(
                  textAlign: TextAlign.center,
                  controller: _textEditingController,
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        result =
                            double.parse(_textEditingController.text) * 2800;
                      });
                      // print(_textEditingController.text);
                    },
                    child: const Text("Convert", style: TextStyle(color: Color.fromARGB(255, 241, 63, 63)),), 
                                 
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(15)),
                Text(
                  'Tshs: $result shs',
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
