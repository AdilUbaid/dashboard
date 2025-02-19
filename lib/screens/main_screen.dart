import 'package:dashboard/util/responsive.dart';
import 'package:dashboard/widgets/dashboard_widget.dart';
import 'package:dashboard/widgets/side_menu_widgets.dart';
import 'package:dashboard/widgets/summary_widget.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);

    return Scaffold(
      drawer: !isDesktop
          ? const SizedBox(
              width: 250,
              child: SideMenuWidgets(),
            )
          : null,
      endDrawer: Responsive.isMobile(context)
          ? SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: const SummaryWidget(),
            )
          : null,
      body: SafeArea(
          child: Row(
        children: [
          if (isDesktop)
            const Expanded(
              flex: 2,
              child: SizedBox(
                child: SideMenuWidgets(),
              ),
            ),
          const Expanded(
            flex: 7,
            child: SizedBox(
              child: DashboardWidget(),
            ),
          ),
          if (isDesktop)
            const Expanded(
              flex: 3,
              child: SummaryWidget(),
            )
        ],
      )),
    );
  }
}
