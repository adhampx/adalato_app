import 'package:adalato_app/utils/app_routes.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Explore'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // TODO: Implement search functionality here
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            color: Colors.grey,
            // TODO Replace with image from assets
            // child: Image.asset('assets/your_image.jpg', fit: BoxFit.cover),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(10),
              children: [
                _buildSection(context, 'Programs', Colors.blue),
                _buildSection(context, 'Workouts', Colors.green),
                _buildSection(context, 'Exercises', Colors.orange),
                _buildSection(context, 'Shop', Colors.purple),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: 0, // Set the default index to Explore
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, AppRoutes.explor);
              break;
            case 1:
              Navigator.pushNamed(context, AppRoutes.home);
              break;
            case 2:
              Navigator.pushNamed(context, AppRoutes.profile);
              break;
          }
        },
      ),
    );
  }

  Widget _buildSection(BuildContext context, String title, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {
                  switch (title) {
                    case 'Programs':
                      Navigator.pushNamed(context, AppRoutes.programs);
                    case 'Workouts':
                      Navigator.pushNamed(context, AppRoutes.workouts);
                    case 'Exercises':
                      Navigator.pushNamed(context, AppRoutes.exercises);
                    case 'Shop':
                      Navigator.pushNamed(context, AppRoutes.shop);
                  }
                },
                child: Text('See all', style: TextStyle(color: Colors.red)),
              ),
            ],
          ),
          Container(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    // Implement item click functionality here
                    print('$title Item $index');
                  },
                  child: Container(
                    width: 100,
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    color: color,
                    child: Center(
                      child: Text(
                        '$title Item ${index + 1}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    // Replace with image from assets
                    // child: Image.asset('assets/your_image.jpg', fit: BoxFit.cover),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
