import 'package:adminpanel/models/my_files_model.dart';
import 'package:adminpanel/responsive.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'file_info_card.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'My Files',
              textScaleFactor: 1,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  vertical: defaultPadding,
                  horizontal: defaultPadding * 1.5,
                ),
              ),
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text(
                'Add New',
                textScaleFactor: 1,
              ),
            )
          ],
        ),
        SizedBox(
          height: defaultPadding,
        ),
        Responsive(
          tablet: FileInfoCardGrid(),
          desktop: FileInfoCardGrid(
            childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
          ),
          mobile: FileInfoCardGrid(
            crossAxisCount: _size.width < 600 ? 2 : 4,
            childAspectRatio: 1,
          ),
        ),
      ],
    );
  }
}

class FileInfoCardGrid extends StatelessWidget {
  final int crossAxisCount;
  final double childAspectRatio;
  const FileInfoCardGrid({
    Key key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoMyFiles.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => FileinfoCard(
        info: demoMyFiles[index],
      ),
    );
  }
}
