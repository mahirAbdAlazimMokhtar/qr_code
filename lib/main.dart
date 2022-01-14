import 'package:flutter/material.dart';
import 'package:qr_code/screens/scanqr.dart';

void main() {
  runApp(ScannerApp());
}

class ScannerApp extends StatelessWidget {
  const ScannerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:const Text('Scanner App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>CreateQrCode(),),);
              },
              child:const Text(
                'Create Qr Code',
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child:const Text(
                'Read Qr Code',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
