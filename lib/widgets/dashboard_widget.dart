import 'package:dashboard/util/responsive.dart';
import 'package:dashboard/widgets/Header_widget.dart';
import 'package:dashboard/widgets/activity_details_card.dart';
import 'package:dashboard/widgets/bar_graph_widget.dart';
import 'package:dashboard/widgets/line_chart_card.dart';
import 'package:dashboard/widgets/summary_widget.dart';
import 'package:flutter/material.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const HeaderWidget(),
            const SizedBox(
              height: 18,
            ),
            const ActivityDetailsCard(),
            const SizedBox(
              height: 18,
            ),
            const LineChartCard(),
            const SizedBox(
              height: 18,
            ),
            const BarGraphWidget(),
            const SizedBox(height: 18),
            if (Responsive.isTablet(context)) const SummaryWidget(),
          ],
        ),
      ),
    );
  }
}
