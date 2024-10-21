import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homefix/presentation/pages/dashboard/widget/bottom_navigation_bar.dart';
import 'package:homefix/presentation/pages/message/message_page.dart';
import 'package:homefix/presentation/pages/plans/all_plans/all_plans_page.dart';
import 'package:homefix/presentation/pages/profile/profile_page.dart';
import 'package:homefix/presentation/styles/colors/app_colors.dart';
import 'package:homefix/presentation/styles/path/app_resources.dart';
import '../home/home_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  DashboardPageState createState() => DashboardPageState();
}

class DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;

  // List of screens for navigation
  final List<Widget> _screens = [
    const HomePage(),
    AllPlansPage(),
    MessagePage(),
    ProfilePage(),
  ];

  // Key for the bottom navigation bar
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  // Unselected
  final List<String> _iconPaths = [
    AppResources.svgHome24,
    AppResources.svgDate24,
    AppResources.svgChat24,
    AppResources.svgProfile24
  ];

  // Selected
  final List<String> _selectedIconPaths = [
    AppResources.svgHome36,
    AppResources.svgDate36,
    AppResources.svgChat36,
    AppResources.svgProfile36
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        items: List<Widget>.generate(_iconPaths.length, (index) {
          return _selectedIndex == index
              ? SvgPicture.asset(_selectedIconPaths[index])
              : SvgPicture.asset(_iconPaths[index]);
        }),
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          // final CurvedNavigationBarState? navBarState =
          //     _bottomNavigationKey.currentState;
          // navBarState?.setPage(index);
        },
        color: AppColors.lightGreen,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
      ),
    );
  }
}
