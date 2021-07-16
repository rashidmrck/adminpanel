import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'chart.dart';
import 'storage_card.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
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
        children: [
          Text(
            "Storage Details",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Chart(),
          StorageInfoCard(
            fileSize: '1.3GB',
            numberOfFiles: 1328,
            svgSrc: 'assets/icons/Documents.svg',
            title: 'Documents Files',
          ),
          StorageInfoCard(
            fileSize: '15.13B',
            numberOfFiles: 1228,
            svgSrc: 'assets/icons/media.svg',
            title: 'Media Files',
          ),
          StorageInfoCard(
            fileSize: '1.3GB',
            numberOfFiles: 1328,
            svgSrc: 'assets/icons/folder.svg',
            title: 'Other Files',
          ),
          StorageInfoCard(
            fileSize: '1.3GB',
            numberOfFiles: 1328,
            svgSrc: 'assets/icons/unknown.svg',
            title: 'Unknow',
          ),
        ],
      ),
    );
  }
}
