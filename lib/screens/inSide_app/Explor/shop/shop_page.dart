import 'package:adalato_app/utils/app_routes.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  TextEditingController _searchController = TextEditingController();
  List<Map<String, String>> _shopItems = [
    {'name': 'Product 1', 'price': '\$10'},
    {'name': 'Product 2', 'price': '\$20'},
    {'name': 'Product 3', 'price': '\$30'},
    {'name': 'Product 4', 'price': '\$40'},
    {'name': 'Product 5', 'price': '\$50'},
  ];

  List<Map<String, String>> _filteredItems = [];

  @override
  void initState() {
    super.initState();
    _filteredItems = _shopItems;
    _searchController.addListener(_filterItems);
  }

  void _filterItems() {
    String query = _searchController.text.toLowerCase();
    setState(() {
      _filteredItems = _shopItems.where((item) {
        return item['name']!.toLowerCase().contains(query);
      }).toList();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop'),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_list),
            onPressed: () {
              // TODO: Add filter functionality
              Navigator.pushNamed(context, AppRoutes.shopFilter);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredItems.length,
              itemBuilder: (context, index) {
                final item = _filteredItems[index];
                return ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.shopItem);
                  },
                  leading: Container(
                    width: 50,
                    height: 50,
                    color: Colors.grey,
                    // Image.network('image_url') would be here
                  ),
                  title: Text(item['name']!),
                  subtitle: Text(item['price']!),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
