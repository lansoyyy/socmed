import 'package:flutter/material.dart';
import 'package:socmed/utils/colors.dart';
import 'package:socmed/widgets/drawer_widget.dart';
import 'package:socmed/widgets/text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        backgroundColor: primary,
        title: TextWidget(
          text: 'HOME',
          fontSize: 18,
          color: Colors.white,
          fontFamily: 'Bold',
        ),
        centerTitle: true,
      ),
    );
  }
}
