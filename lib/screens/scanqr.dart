import 'package:barcode_widget/barcode_widget.dart';

import 'package:flutter/material.dart';


class CreateQrCode extends StatefulWidget {
  const CreateQrCode({Key? key}) : super(key: key);

  @override
  _CreateQrCodeState createState() => _CreateQrCodeState();
}

class _CreateQrCodeState extends State<CreateQrCode> {
  var qrStar = 'Add Data';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create QR Code'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //this widget from lib barcode widget
          BarcodeWidget(
            data: qrStar,
            barcode: Barcode.qrCode(),
            color: Colors.blue,
            height: 250.0,
            width: 250.0,
          ),
          Container(
            alignment: AlignmentDirectional.center,
            width: MediaQuery.of(context).size.width * .8,
            child: TextField(
              onChanged: (value) {
                qrStar = value;
              },
              decoration: const InputDecoration(
                  hintText: 'Enter your Data Here',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                    width: 2.0,
                    color: Colors.red,
                  ))),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
          ),
        ],
      ),
    );
  }
}
