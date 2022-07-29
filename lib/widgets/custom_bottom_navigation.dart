import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Como el label es obligatorio, se pone en flase el showSelected y showUnselected para que el texto no aparezca y no ocupe espacio
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      currentIndex: 0, // El elemento marcado
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today_outlined,),
          label: 'Calendario'
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today_outlined),
          label: 'Gráfica'
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pie_chart_outline_outlined),
          label: 'Usuarios'
          ),
      ]
      );
  }
}