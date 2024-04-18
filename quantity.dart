import 'package:flutter/material.dart';
import 'package:ganesh/tomato/payment.dart';

void main() {
  runApp(quan());
}

class quan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuantityPage(),
    );
  }
}

class QuantityPage extends StatefulWidget {
  @override
  _QuantityPageState createState() => _QuantityPageState();
}

class _QuantityPageState extends State<QuantityPage> {
  int quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quantity Selector'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Quantity:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Container(
              width: 150,
              child: TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    quantity = int.tryParse(value) ?? 0;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Enter quantity',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                 Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PaymentPage()),
    );
                print('Quantity selected: $quantity');
              },
              child: Text('Payment'),
            ),
          ],
        ),
      ),
    );
  }
}
