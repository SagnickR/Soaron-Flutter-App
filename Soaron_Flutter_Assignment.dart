import 'package:flutter/material.dart';

void main() {
  runApp(OrderTrackingScreen());
}

class OrderTrackingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Order Tracking'),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Product Details
              Text(
                'Videography Drone',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'Ultra HD\n₹1050.00',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),

              // Product ID
              Align(
                alignment: Alignment.centerRight,
                child: Text('Product ID: 123456'),
              ),
              SizedBox(height: 20),

              // Order Summary
              Text(
                'Order Summary',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),

              // Order Details
              _buildOrderDetail('Drone Type:', 'Videography Drone'),
              _buildOrderDetail('Category:', 'Ultra HD'),
              _buildOrderDetail('Price:', '₹1050.00'),
              _buildOrderDetail('Product ID:', '123456'),
              SizedBox(height: 20),

              // Operator Info
              Text(
                'Operator Information',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),

              _buildOperatorInfo('Name:', 'Operator One'),
              _buildOperatorInfo('Mobile:', '1234567890'),
              SizedBox(height: 20),

              // Order Status
              Text(
                'Order Status',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),

              // Tracking Circles and Lines
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildTrackingCircle(true),
                  _buildTrackingLine(),
                  _buildTrackingCircle(false),
                  _buildTrackingLine(),
                  _buildTrackingCircle(false),
                  _buildTrackingLine(),
                  _buildTrackingCircle(false),
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildTrackingText('Drone Booked'),
                  _buildTrackingText('Pilot On the Way'),
                  _buildTrackingText('Payment Completed'),
                  _buildTrackingText('Service Completed'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget to display order detail with label and value aligned
  Widget _buildOrderDetail(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label),
        Text(value),
      ],
    );
  }

  // Widget to display operator information with label and value aligned
  Widget _buildOperatorInfo(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label),
        Text(value),
      ],
    );
  }

  // Widget to build the tracking circle
  Widget _buildTrackingCircle(bool isActive) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? Colors.blue : Colors.grey,
      ),
    );
  }

  // Widget to build the tracking line
  Widget _buildTrackingLine() {
    return Expanded(
      child: Container(
        height: 2,
        color: Colors.grey,
      ),
    );
  }

  // Widget to build the tracking text
  Widget _buildTrackingText(String text) {
    return SizedBox(
      width: 100,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 12),
      ),
    );
  }
}
