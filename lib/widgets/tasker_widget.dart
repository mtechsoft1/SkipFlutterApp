import 'package:flutter/material.dart';
import 'package:task_rabbit/responsive/device_dimensions.dart';

// Define your data as a 2D list
final List<List<String>> data = [
  ['assets/images/tasker1.png', 'Savannah Nguyen', 'HVAC Expert'],
  ['assets/images/tasker2.png', 'Ralph Edwards', 'Electrician'],
  ['assets/images/tasker3.png', 'Mike Johnson', 'Plumber'],
  ['assets/images/tasker4.png', 'Jenny Wilson', 'Junk Removal'],
  ['assets/images/tasker5.png', 'Jane Cooper', 'Trainer'],
  ['assets/images/tasker6.png', 'Guy Hawkins', 'Personal Assistance'],
  ['assets/images/tasker7.png', 'Devon Lane', 'Lawyer'],
  ['assets/images/tasker8.png', 'Jane Smith', 'Mechanic'],
  ['assets/images/tasker9.png', 'Mike Johnson', 'Mechanic'],
];

class ListTasker extends StatelessWidget {
  final String imagePath;
  final String name;
  final String profession;

  ListTasker(
      {required this.imagePath, required this.name, required this.profession});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(imagePath),
            radius: 40.0,
          ),
          SizedBox(height: DeviceDimensions.screenHeight(context) * 0.01),
          Text(
            name,
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          Text(
            profession,
            style: TextStyle(fontSize: 16.0, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
