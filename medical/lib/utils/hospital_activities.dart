// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class HospitalActivities extends StatelessWidget {
  final icon;
  final String imageName;
  const HospitalActivities(
      {Key? key, required this.icon, required this.imageName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
            color: const Color.fromARGB(95, 179, 173, 173),
            borderRadius: BorderRadius.circular(15.0)),
        child: Row(
          children: [
            Image.asset(
              icon,
              width: 35,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              imageName,
              style: const TextStyle(fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
