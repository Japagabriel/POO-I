import 'package:flutter/material.dart';

class NewBottons extends StatelessWidget {
  NewBottons();

  void botpress(int index) {
    print("Tocaram no botão: $index");
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: botpress, 
      items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: 'Call',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contact_phone),
              label: 'contact',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm),
              label: 'Alarm',
            )
        ],
        selectedLabelStyle: TextStyle(fontSize: 20),
        selectedItemColor: Colors.blueGrey,
        unselectedLabelStyle: TextStyle(fontSize: 20),
        unselectedItemColor: Colors.blueGrey,
      
      );

  }

}