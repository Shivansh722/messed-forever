import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:mess/Screens/home.dart';
import 'package:mess/Screens/hotel_recepie.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  _HiddenDrawerState createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _screens = [];

  @override
  void initState() {
    super.initState();
    _screens = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "Mess Menu",
          baseStyle: const TextStyle(color: Color.fromARGB(255, 190, 196, 230)),
           // Change the background color behind the title here
          selectedStyle: const TextStyle(color: Color.fromARGB(255, 190, 196, 230)),
        ),
        const HomeScreen(),
      ),
      
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "Hostel Recipe",
          baseStyle: const TextStyle(color: Color.fromARGB(255, 190, 196, 230)),
          // Change the background color behind the title here
          selectedStyle: const TextStyle(color: Color.fromARGB(255, 190, 196, 230)),
        ),
        const HostelRecipe(),
      ),// Add other screens if needed
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: const Color.fromARGB(255, 106, 119, 159),
      screens: _screens,
      initPositionSelected: 0,
    );
  }
}
