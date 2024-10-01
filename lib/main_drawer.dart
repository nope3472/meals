import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key,required this.onSelectscreen});

  final void Function(String identifier) onSelectscreen;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Center(
              child: Text(
                'Meal Planner',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.restaurant, size: 26),
            title: Text(
              'Meals',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              onSelectscreen('meals'); // Replace '/' with the actual route for your home page.
            },
          ),
          ListTile(
            leading: Icon(Icons.settings, size: 26),
            title: Text(
              'Filters',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              onSelectscreen('filters');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.info, size: 26),
            title: Text(
              'About',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushNamed('/about'); // Replace '/about' with the actual route for the About page.
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_page, size: 26),
            title: Text(
              'Contact Us',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushNamed('/contact'); // Replace '/contact' with the actual route for the Contact Us page.
            },
          ),
        ],
      ),
    );
  }
}
