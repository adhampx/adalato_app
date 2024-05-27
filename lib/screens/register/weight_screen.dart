import 'package:adalato_app/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_picker/flutter_picker.dart';

class WeightPage extends StatefulWidget {
  @override
  _WeightPageState createState() => _WeightPageState();
}

class _WeightPageState extends State<WeightPage> {
  String _selectedWeight = '70';

  void _showHeightPicker(BuildContext context) {
    Picker(
      adapter: NumberPickerAdapter(data: [
        NumberPickerColumn(begin: 50, end: 150),
      ]),
      hideHeader: true,
      title: Text("Select Weight"),
      onConfirm: (Picker picker, List<int> value) {
        setState(() {
          _selectedWeight = picker.getSelectedValues()[0].toString();
        });
      },
    ).showDialog(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: Colors.white),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Weight',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () => _showHeightPicker(context),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.all(20),
              child: Text(
                '$_selectedWeight Kg',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              // Navigate to the next page
              Navigator.pushNamed(context, AppRoutes.fitnessLevel);
            },
            child: Text('Next'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
            ),
          ),
        ],
      ),
    );
  }
}
