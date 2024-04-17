import 'package:flutter/material.dart';
import 'package:ganesh/tomato/former.dart';
import 'package:ganesh/tomato/distributor.dart';

void main() {
  runApp(society());
}

class society extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Society',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              'SOCIETY',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 0), // Adding space between title and quote
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white, // Background color of the box
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Text(
                '“Like Tomatoes, societies thrive when nurtured with diversity, yet are best appreciated when savored as a whole”',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 50), // Space before boxes
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BoxWidget(details: 'Farmer ID: 1', load: 'x tons', arrivalTime: 'y'),
              BoxWidget(details: 'Farmer ID: 2', load: 'x tons', arrivalTime: 'y'),
              BoxWidget(details: 'Farmer ID: 3', load: 'x tons', arrivalTime: 'y'),
            ],
          ),
          SizedBox(height: 30), // Space between rows
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BoxWidget(details: 'Farmer ID: 4', load: 'x tons', arrivalTime: 'y'),
              BoxWidget(details: 'Farmer ID: 5', load: 'x tons', arrivalTime: 'y'),
              BoxWidget(details: 'Farmer ID: 6', load: 'x tons', arrivalTime: 'y'),
            ],
          ),
          SizedBox(height: 35), // Space between boxes and buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => farmer()),
                  );
                },
                child: Text('Farmer Details'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => farmer()),
                  );
                },
                child: Text('Distributor Details'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BoxWidget extends StatelessWidget {
  final String details;
  final String load;
  final String arrivalTime;

  const BoxWidget({
    Key? key,
    required this.details,
    required this.load,
    required this.arrivalTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.greenAccent, // Background color of the box
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(details),
          Text('Load: $load'),
          Text('Time of Arrival: $arrivalTime'),
        ],
      ),
    );
  }
}
