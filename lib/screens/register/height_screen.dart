import 'package:adalato_app/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_picker/flutter_picker.dart';

class HeightPage extends StatefulWidget {
  @override
  _HeightPageState createState() => _HeightPageState();
}

class _HeightPageState extends State<HeightPage> {
  String _selectedHeight = '170';

  void _showHeightPicker(BuildContext context) {
    Picker(
      adapter: NumberPickerAdapter(data: [
        NumberPickerColumn(begin: 100, end: 250),
      ]),
      hideHeader: true,
      title: Text("Select Height"),
      onConfirm: (Picker picker, List<int> value) {
        setState(() {
          _selectedHeight = picker.getSelectedValues()[0].toString();
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
            'Height',
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
                '$_selectedHeight cm',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              // Navigate to the next page
              Navigator.pushNamed(context, AppRoutes.weight);
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
