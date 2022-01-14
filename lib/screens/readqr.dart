import 'package:flutter/material.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({Key? key}) : super(key: key);

  @override
  _ScanScreenState createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  var qrStar = 'try to scan data';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scan Data'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                qrStar,
                style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Scan',
                ),
              )
            ]),
      ),
    );
  }
}
