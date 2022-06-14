import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeView extends GetView<HomeController> {
  List<TabItem> tabItems = List.of([
    new TabItem(Icons.home, "Inicio", Colors.white,
        labelStyle:
            TextStyle(fontWeight: FontWeight.normal, color: Colors.black)),
    new TabItem(Icons.inventory_2, "Estoque", Colors.white,
        labelStyle:
            TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
    new TabItem(MdiIcons.finance, "Balanço", Colors.white,
        labelStyle:
            TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
    new TabItem(MdiIcons.truckMinusOutline, "Fornecedores", Colors.white,
        labelStyle:
            TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
    new TabItem(Icons.monetization_on, "Pedidos", Colors.white,
        labelStyle:
            TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
  ]);

  @override
  Widget build(BuildContext context) {
    int selectedMenuBar = 0;
    String userName = "usuário";
    CircularBottomNavigationController _navigationController =
        CircularBottomNavigationController(selectedMenuBar);
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: Text(
          'Bom dia, ${userName}',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: false,
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(MdiIcons.clockTimeThreeOutline)),
          IconButton(onPressed: () {}, icon: Icon(MdiIcons.bellOutline)),
          IconButton(onPressed: () {}, icon: Icon(MdiIcons.clipboardOutline))
        ],
      ),
      drawer: Drawer(
        backgroundColor: Get.theme.primaryColor,
      ),
      body: Center(
        child: Text(
          'HomeView',
          style: TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: CircularBottomNavigation(
        normalIconColor: Colors.white,
        selectedIconColor: Colors.black,
        barBackgroundColor: Get.theme.primaryColor,
        tabItems,
        controller: _navigationController,
      ),
      /* floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: () {}), */
    );
  }
}
