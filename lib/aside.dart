import 'package:flutter/material.dart';

class Aside extends StatelessWidget {
  const Aside({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            child: Row(
              children: [
                Icon(Icons.shop, size: 40, color: Colors.white), // Icône ajoutée
                SizedBox(width: 10),
                Text(
                  'ESHOP',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.blue, // Couleur de fond
              border: Border(bottom: BorderSide(color: Colors.grey)),
            ),
          ),
          const SizedBox(height: 15),
          _buildSectionTitle("OVERVIEW"),
          _buildListTile(context, Icons.home, "Main menu", '/home'),
          const SizedBox(height: 15),
          _buildSectionTitle("DEVICES"),
          _buildListTile(context, Icons.room_service, "In service", '/in_service'),
          _buildListTile(context, Icons.book, "Reserved", '/reserved'),
          _buildListTile(context, Icons.work, "Repaired", '/repaired'),
          const SizedBox(height: 15),
          _buildSectionTitle("CLIENTS"),
          const SizedBox(height: 15),
          _buildListTile(context, Icons.list, "Client list", '/client_list'),
          _buildListTile(context, Icons.online_prediction_rounded, "In order", '/in_order'),
          _buildListTile(context, Icons.call, "Call", '/call'),
          const SizedBox(height: 15),
          _buildSectionTitle("NOTES"),
          _buildListTile(context, Icons.note, "Notes", '/notes'),
          _buildListTile(context, Icons.notification_add, "Reminders", '/reminders'),
          _buildListTile(context, Icons.calendar_month, "Calendar", '/calendar'),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        color: Color.fromARGB(223, 158, 158, 158),
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildListTile(BuildContext context, IconData icon, String title, String route) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      tileColor: Colors.transparent, // Couleur de fond par défaut
      hoverColor: Colors.blue.withOpacity(0.1), // Couleur au survol
    );
  }
}
