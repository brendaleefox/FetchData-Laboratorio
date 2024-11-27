import 'package:flutter/material.dart';
import 'package:flutter_cocktail/presentation/screen/home.dart';
import 'package:flutter_cocktail/presentation/screen/list_drinks.dart';
import 'package:flutter_cocktail/presentation/screen/search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

 @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    
    //Contenido de imagenes en pantalla principal
    const Home(),
    //Contenido pantalla bebidas
    const ListDrink(),
    //contenido pantalla de busqueda
    const Search(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Welcome to The Cocktails APP',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      backgroundColor: Colors.grey[200],
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[200],
        items: const [
          BottomNavigationBarItem(
            icon: SizedBox.shrink(), 
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SizedBox.shrink(), 
            label: 'List Drinks',
          ),
          BottomNavigationBarItem(
            icon: SizedBox.shrink(), 
            label: 'Search',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
