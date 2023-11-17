import 'package:fashion_ui/widgets/app_bar.dart';
import 'package:fashion_ui/widgets/search_field.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 89),
        child: buildAppBar(),
      ),
      body: Column(
        children: [

          buildSearchBar(),



        ],
      ),
    );
  }
}
