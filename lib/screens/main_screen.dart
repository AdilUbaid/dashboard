import 'package:dashboard/widgets/dashboard_widget.dart';
import 'package:dashboard/widgets/side_menu_widgets.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        children: [
          const Expanded(
            flex: 2,
            child: SizedBox(
              child: SideMenuWidgets(),
            ),
          ),
          const Expanded(
            flex: 7,
            child: SizedBox(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: DashboardWidget(),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.green,
            ),
          )
        ],
      )),
    );
  }
}
