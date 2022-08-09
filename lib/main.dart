import 'package:flutter/material.dart';
import 'package:flutter_course_3/widgets/red_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Align(
        alignment: Alignment.center,
        // child: Column(
        //   children: [
        //     Container(
        //       child: Text('a Container'),
        //       decoration: BoxDecoration(
        //         color: Colors.green,
        //         border: Border.all(width: 3, color: Colors.blue, strokeAlign: StrokeAlign.outside),
        //         borderRadius: BorderRadius.all(Radius.circular(20)),
        //         boxShadow: [
        //           BoxShadow(
        //             color: Colors.black,
        //             offset: Offset(10, 10),
        //             blurRadius: 30,
        //           )
        //         ],
        //       ),
        //       margin: EdgeInsets.all(20),
        //       padding: EdgeInsets.only(top: 10, right: 20, bottom: 30, left: 40),
        //     ),
        //     RedContainer(),
        //   ],
        // ),
        child: ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.abc),
          label: const Text(
            'a button',
            style: TextStyle(
              fontSize: 25,
              fontStyle: FontStyle.italic,
              letterSpacing: 10,
              color: Colors.black,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            minimumSize: const Size(400, 50),
            shadowColor: Colors.green,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
