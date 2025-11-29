import 'package:flutter/material.dart';
import 'package:aappointment_app/patient%20status/patientstatus.dart';
class AppointmentsScreen extends StatelessWidget {
  const AppointmentsScreen({super.key});

    @override
    Widget build(BuildContext context) {
 return Scaffold(
 appBar: AppBar(
 backgroundColor: Colors.greenAccent,
title: const Text(
 "Appointments",
  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
 ),
 actions:  [
 Padding(
padding: EdgeInsets.only(right: 12),
 child: Icon(Icons.menu, size: 28),
)
 ],
 ),
body: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [

 Padding(
 padding: EdgeInsets.symmetric(vertical: 20),
child: Center(
 child: Text(
"sat.day, 29 november 2025",
style: TextStyle(
 fontSize: 20,
 fontWeight: FontWeight.w600,
),
),
),
 ),

 Expanded(
child: ListView(
 children:  [
 AppointmentTile(
 name: "hossam",
 time: "23:50",
 status: AppointmentStatus.cancelled
),
 AppointmentTile(
name: "ahmed",
  time: "14:10",
),
 AppointmentTile(
  name: "amr",
  time: "10:20",
status: AppointmentStatus.done,
),
 AppointmentTile(
  name: "mohamed",
    time: "20:00",
   ),
 AppointmentTile(
name: "adham",
 time: "16:10",

),
 AppointmentTile(
  name: "selena",
 time: "08:00",

),
],
),
  ),
],
),
 );
  }
}

