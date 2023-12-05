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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             
              Text(
                'Track Order:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Videography Drone', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Ultra HD', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Price: Rupees 1050.00', style: TextStyle(fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Product ID: 123456'),
                ],
              ),
              SizedBox(height: 20), 

              
              Text(
                'Order Summary',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),

              _buildOrderDetail('Drone Type:', 'Videography Drone'),
              _buildOrderDetail('Category:', 'Ultra HD'),
              _buildOrderDetail('Price:', 'Rupees 1050.00'),
              _buildOrderDetail('Product ID:', '123456'),
              SizedBox(height: 20), 

              
              Text(
                'Operator Information',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),

              _buildOperatorInfo('Name:', 'Operator One'),
              _buildOperatorInfo('Mobile Number:', '1234567890'),
              SizedBox(height: 20), 

              
              Text(
                'Order Status Tracking',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),

              _buildOrderStatus('Drone Booked', 'Date: 2023-12-05 10:00 AM'),
              _buildOrderStatus('Pilot on the way to your location', 'Date: 2023-12-05 12:30 PM'),
              _buildOrderStatus('Payment Completed', 'Date: 2023-12-05 01:45 PM'),
              _buildOrderStatus('Service Completed', 'Date: 2023-12-05 03:00 PM'),
            ],
          ),
        ),
      ),
    );
  }

  
  Widget _buildOrderDetail(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label),
        Text(value),
      ],
    );
  }

  
  Widget _buildOperatorInfo(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label),
        Text(value),
      ],
    );
  }

  
  Widget _buildOrderStatus(String status, String dateTime) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(status),
        Text(dateTime),
        SizedBox(height: 10),
      ],
    );
  }
}
