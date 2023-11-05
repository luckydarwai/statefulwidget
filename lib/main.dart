import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blueGrey,
        ),
        textTheme: const TextTheme(bodyText1: TextStyle(color: Colors.purple)),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void inCounter() {
    setState(() {
      count += 100;
    });
  }

  void resetCount() {
    count = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("StatefulWidget")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Counter is $count',
              style:
                  const TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15.0,
            ),
            ElevatedButton(
                onPressed: () {
                  resetCount();
                },
                child: const Text('Reset Counter')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: inCounter,
        child: const Icon(
          Icons.add,
          size: 30.0,
          color: Colors.orange,
        ),
      ),
    );
  }
}
