import 'package:eshop/calendart.dart';
import 'package:eshop/call.dart';
import 'package:eshop/client_list.dart';
import 'package:eshop/in-service.dart';
import 'package:eshop/in_order.dart';
import 'package:eshop/notes.dart';
import 'package:eshop/reminders.dart';
import 'package:eshop/repaired.dart';
import 'package:eshop/reserved.dart';
import 'package:flutter/material.dart';
import 'home_page.dart ';
void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Eshop",
      home: const HomePage(),
      routes: {
        '/home': (context) => const HomePage(),
        '/in_sevice': (context) => const InService(),
        '/reserved': (context) => const Reserved(),
        '/repaired': (context) => const Repaired(),
        '/client_list': (context) => const ClientList(),
        '/in_order': (context) => const InOrder(),
        '/call': (context) => const Call(),
        '/notes': (context) => const Notes(),
        '/reminders': (context) => const Reminders(),
        '/calendar': (context) => const Calendart(),
    
      },
    );
  }
}


