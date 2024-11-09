import 'package:dashboard/const/constants.dart';
import 'package:dashboard/data/side_menu_data.dart';
import 'package:flutter/material.dart';

class SideMenuWidgets extends StatefulWidget {
  const SideMenuWidgets({super.key});

  @override
  State<SideMenuWidgets> createState() => _SideMenuWidgetsState();
}

class _SideMenuWidgetsState extends State<SideMenuWidgets> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final data = SideMenuData();

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      color: const Color(0xFF171821),
      child: ListView.builder(
        itemBuilder: (context, index) => buildMenuEntry(data, index),
        itemCount: data.menu.length,
      ),
    );
  }

  buildMenuEntry(SideMenuData data, int index) {
    final bool isSelected = selectedIndex == index;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          color: isSelected ? selectionColor : Colors.transparent,
          borderRadius: BorderRadius.circular(6)),
      child: InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Row(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 7.0, horizontal: 13),
              child: Icon(
                data.menu[index].icon,
                color: isSelected ? Colors.black : Colors.grey,
              ),
            ),
            Text(
              data.menu[index].title,
              style: TextStyle(
                  fontSize: 16,
                  color: isSelected ? Colors.black : Colors.grey,
                  fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
