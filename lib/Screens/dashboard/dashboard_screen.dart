import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:adminpanel/constants.dart';
import 'components/header.dart';
import 'components/storage_details.dart';

class DashBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<PieChartSectionData> paiChartSelectionData = [
      PieChartSectionData(
        showTitle: false,
        value: 25,
        color: primaryColor,
        radius: 25,
      ),
      PieChartSectionData(
        showTitle: false,
        value: 20,
        color: Color(0xFF26E5FF),
        radius: 22,
      ),
      PieChartSectionData(
        showTitle: false,
        value: 10,
        color: Color(0xFFFFCF26),
        radius: 19,
      ),
      PieChartSectionData(
        showTitle: false,
        value: 15,
        color: Color(0xFFEE2727),
        radius: 16,
      ),
      PieChartSectionData(
        showTitle: false,
        value: 25,
        color: primaryColor.withOpacity(0.1),
        radius: 13,
      ),
    ];
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(
              height: defaultPadding,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    height: 500,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: defaultPadding,
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.all(defaultPadding),
                    // height: 500,
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: StorageDetails(
                      paiChartSelectionData: paiChartSelectionData,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
