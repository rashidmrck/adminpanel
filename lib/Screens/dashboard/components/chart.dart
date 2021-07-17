import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Chart extends StatelessWidget {
  const Chart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              centerSpaceRadius: 70,
              sections: paiChartSelectionData,
              startDegreeOffset: -90,
              sectionsSpace: 0,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: defaultPadding,
                ),
                Text(
                  '29.1',
                  textScaleFactor: 1,
                  style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        height: 0.6,
                      ),
                ),
                Text(
                  'of 128 GB',
                  textScaleFactor: 1,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

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
