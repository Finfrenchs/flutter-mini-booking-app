import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../widgets/widgets_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: const [
            HomeTitle(),
            SpaceHeight(15),
            HomeSearch(),
            SpaceHeight(20),
            HomeContent(),
          ],
        ),
      ),
    );
  }
}
