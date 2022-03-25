import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: 3, vsync: this); // initialise it here
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: _tabController,
      isScrollable: true,
      indicatorColor: Colors.transparent,
      unselectedLabelStyle: const TextStyle(
        color: Colors.grey,
        fontSize: 16,
      ),
      labelStyle: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w600,
        decorationThickness: 5,
        fontSize: 16,
        decorationColor: Colors.yellow,
        decoration: TextDecoration.underline,
      ),
      labelColor: Colors.black,
      tabs: const [
        Tab(
          text: 'Tele-Consultation',
        ),
        Tab(text: 'Lab tests'),
        Tab(text: 'Procedure'),
      ],
    );
  }
}
