import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'PERSON.dart';
import 'home_page.dart';
import 'screens/catalog_screen.dart';

// void main() {
//   runApp(GetMaterialApp(home: MyApp(),));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: CatalogScreen(),

//     );
//   }
// }
void main() {
  runApp(GetMaterialApp(home: MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const RootPage(),
      
    );
    
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  List<Widget> pages =  [
    Home(),
    CatalogScreen(),
    PersonPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:             
      pages[currentPage],     
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.menu_book), label: 'Menu'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),         
          ],
          onDestinationSelected: (int index){
            setState(() {
             currentPage = index;  
            });
            
          },
          selectedIndex: currentPage,
      ),
    );
  }
}