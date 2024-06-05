import 'package:flutter/material.dart';
import 'package:flutter_mini_booking_app/presentation/home/pages/home_page.dart';

import '../../../core/core.dart';
import '../widgets/nav_item.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  final _pages = [
    const HomePage(),
    const Center(child: Text('Save')),
    const Center(child: Text('Profile')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(30),
          ),
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -2),
              blurRadius: 30.0,
              blurStyle: BlurStyle.outer,
              spreadRadius: 0,
              color: AppColors.black.withOpacity(0.08),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavItem(
              iconPath: Icons.home_rounded,
              label: 'Home',
              isActive: _selectedIndex == 0,
              onTap: () => _onItemTapped(0),
            ),
            NavItem(
              iconPath: Icons.bookmark_rounded,
              label: 'Save',
              isActive: _selectedIndex == 1,
              onTap: () => _onItemTapped(1),
            ),
            NavItem(
              iconPath: Icons.person_3_rounded,
              label: 'Profile',
              isActive: _selectedIndex == 2,
              onTap: () => _onItemTapped(2),
            ),
          ],
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
