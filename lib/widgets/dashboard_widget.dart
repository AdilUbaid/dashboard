import 'package:dashboard/widgets/Header_widget.dart';
import 'package:dashboard/widgets/activity_details_card.dart';
import 'package:flutter/material.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 10,
        ),
        HeaderWidget(),
        SizedBox(
          height: 18,
        ),
        ActivityDetailsCard()
      ],
    );
  }
}
