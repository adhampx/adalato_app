import 'dart:math';
import 'package:adalato_app/models/tips_model.dart';
import 'package:flutter/material.dart';

class TipsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tip = getRandomTip();

    return Scaffold(
      appBar: AppBar(
        title: Text('Daily Tip'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tip.title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              tip.description,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Method to get a random tip from the list using the tip's ID
  TipModel getRandomTip() {
    final random = Random();
    int randomId = random.nextInt(tips.length) +
        1; // +1 to ensure it's between 1 and length
    String randomS = randomId.toString();
    return tips.firstWhere((tip) => tip.tipId == randomS);
  }
}
