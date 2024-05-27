import 'package:adalato_app/utils/app_routes.dart';
import 'package:flutter/material.dart';

class FitnessLevelScreen extends StatefulWidget {
  @override
  _FitnessLevelScreenState createState() => _FitnessLevelScreenState();
}

class _FitnessLevelScreenState extends State<FitnessLevelScreen> {
  String _selectedLevel = '';

  void _selectLevel(String level) {
    setState(() {
      _selectedLevel = level;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Fitness Level',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            _buildLevelCard('Beginner',
                'Some experience                                                '),
            _buildLevelCard(
                'Intermediate', 'Moderate experience with consistent training'),
            _buildLevelCard(
                'Advanced', 'Very experienced with consistent training       '),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                if (_selectedLevel.isNotEmpty) {
                  // Save the user's choice or navigate to the next page
                  print('Selected Level: $_selectedLevel');
                  Navigator.pushNamed(context, AppRoutes.goals);
                } else {
                  // Show a message to select a level
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Please select a fitness level')),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Button color
                minimumSize: Size(double.infinity, 50), // Full-width button
              ),
              child: Text(
                'Next',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLevelCard(String level, String description) {
    return GestureDetector(
      onTap: () => _selectLevel(level),
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: _selectedLevel == level ? Colors.orange : Colors.transparent,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        color: Colors.grey[900],
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                level,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                description,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
