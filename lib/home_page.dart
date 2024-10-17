import 'package:eshop/aside.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Aside(), // Le menu latéral
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            const Icon(Icons.shop,
                size: 30,
                color: Colors.orange), // Icône ajoutée à gauche du titre
            const SizedBox(width: 10),
            const Text(
              "ESHOP",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[200],
                foregroundColor: Colors.black,
              ),
              icon: const Icon(Icons.filter_alt_outlined,
                  color: Colors.black), // Icône de filtrage
              label: const Text('Filters'), // Titre du bouton
            ),
            const SizedBox(width: 15),
            SizedBox(
              width: 400,
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search, color: Colors.black),
                  hintText: 'Rechercher...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            Text(
              "OVERVIEW",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(
                  
                  title: 'New clients',
                  number: '+42',
                  increase: '14% more than yesterday',
                  color: Colors.green,
                ),
                InfoCard(
                  title: 'New reminders',
                  number: '-5',
                  increase: '25% less than yesterday',
                  color: Colors.red,
                ),
                InfoCard(
                  title: 'In service',
                  number: '+16',
                  increase: '8% more than yesterday',
                  color: Colors.blue,
                ),
              ],
            ),
            SizedBox(height: 15),
            Text(
              "CLIENTS",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Expanded(
              // Le tableau occupe tout l'espace restant
              child: ClientsTable(),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String number;
  final String increase;
  final Color color;

  const InfoCard({
    required this.title,
    required this.number,
    required this.increase,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        width: 260, // Taille ajustée pour les cartes d'infos
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              number,
              style: TextStyle(
                fontSize: 32,
                color: color,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              increase,
              style: TextStyle(color: Colors.grey[600], fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}

class ClientsTable extends StatelessWidget {
  const ClientsTable({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Table(
        border:
            TableBorder.all(width: 1, color: const Color.fromARGB(33, 0, 0, 0)),
        children: [
          TableRow(
            children: [
              TableCell(
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(15.0),
                    child: const Text('Name',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
                  ),
                ),
              ),
              TableCell(
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(15.0),
                    child: const Text('Contact',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
                  ),
                ),
              ),
              TableCell(
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(15.0),
                    child: const Text('Description',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
                  ),
                ),
              ),
              TableCell(
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(15.0),
                    child: const Text('Date',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
                  ),
                ),
              ),
              TableCell(
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(15.0),
                    child: const Text('Price',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
                  ),
                ),
              ),
              TableCell(
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(15.0),
                    child: const Text('Status',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
                  ),
                ),
              ),
            ],
          ),
          ...List<TableRow>.generate(
            10,
            (index) => TableRow(
              children: [
                TableCell(
                  child: Container(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      children: [
                        const Icon(Icons.person, size: 15,),
                        const SizedBox(width: 4),
                        Text('Name $index', style: const TextStyle(fontWeight: FontWeight.bold,)),
                      ],
                    ),
                  ),
                ),
                TableCell(
                  child: Container(
                    padding: const EdgeInsets.all(6.0),
                    child: const Row(
                      children: [
                        Icon(Icons.phone, size: 15),
                        SizedBox(width: 4),
                        Text('00 11 22 33', style: TextStyle(fontWeight: FontWeight.bold,)),
                      ],
                    ),
                  ),
                ),
                TableCell(
                  child: Container(
                    padding: const EdgeInsets.all(6.0),
                    child: const Row(
                      children: [
                        Icon(Icons.description, size: 15),
                        SizedBox(width: 4),
                        Text('Description', style: TextStyle(fontWeight: FontWeight.bold,)),
                      ],
                    ),
                  ),
                ),
                TableCell(
                  child: Container(
                    padding: const EdgeInsets.all(6.0),
                    child: const Row(
                      children: [
                        Icon(Icons.date_range, size: 15),
                        SizedBox(width: 4),
                        Text('10/10/2024', style: TextStyle(fontWeight: FontWeight.bold,)),
                      ],
                    ),
                  ),
                ),
                TableCell(
                  child: Container(
                    padding: const EdgeInsets.all(6.0),
                    child: const Row(
                      children: [
                        Icon(Icons.price_change_outlined, size: 15),
                        SizedBox(width: 4),
                        Text('150KM', style: TextStyle(fontWeight: FontWeight.bold,)),
                      ],
                    ),
                  ),
                ),
                TableCell(
                  child: Container(
                    padding: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      color:
                          index % 2 == 0 ? Colors.green[100] : Colors.red[100],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      index % 2 == 0 ? 'Open' : 'Closed',
                      style: TextStyle(
                        color: index % 2 == 0 ? Colors.green : Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
