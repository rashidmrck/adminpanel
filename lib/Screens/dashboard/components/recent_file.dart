import 'package:adminpanel/models/recent_files_model.dart';
import 'package:adminpanel/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Resent Files',
            textScaleFactor: 1,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTabeCard(),
          )
        ],
      ),
    );
  }
}

class DataTabeCard extends StatelessWidget {
  const DataTabeCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columnSpacing: defaultPadding,
      horizontalMargin: 0,
      columns: [
        DataColumn(
          label: Text(
            'File Name',
            textScaleFactor: 1,
          ),
        ),
        DataColumn(
          label: Text(
            'Date',
            textScaleFactor: 1,
          ),
        ),
        DataColumn(
          label: Text(
            'Size',
            textScaleFactor: 1,
          ),
        ),
      ],
      rows: List.generate(
        demoRecentFiles.length,
        (index) => recertDataRow(
          demoRecentFiles[index],
        ),
      ),
    );
  }
}

DataRow recertDataRow(RecentFile recentFile) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(
              recentFile.icon,
              height: 30,
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding,
              ),
              child: Text(
                recentFile.title,
                textScaleFactor: 1,
              ),
            )
          ],
        ),
      ),
      DataCell(
        Text(
          recentFile.date,
          textScaleFactor: 1,
        ),
      ),
      DataCell(
        Text(
          recentFile.size,
          textScaleFactor: 1,
        ),
      ),
    ],
  );
}
