import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:homefix/presentation/pages/plans/all_plans/widgets/notes_item.dart';

import '../../../styles/path/app_resources.dart';
import '../../../styles/theme/app_theme.dart';

class AllPlansPage extends StatelessWidget {
  const AllPlansPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'My Plans List',
          style: AppTheme.headlineMedium,
        ),
        actions: [
          InkWell(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SvgPicture.asset(AppResources.svgAdd),
          )),
          const SizedBox(width: 14)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
