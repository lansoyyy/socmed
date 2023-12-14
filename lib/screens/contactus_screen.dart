import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../widgets/drawer_widget.dart';
import '../widgets/text_widget.dart';

class ContactusScreen extends StatelessWidget {
  const ContactusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        backgroundColor: primary,
        title: TextWidget(
          text: 'Contact Us',
          fontSize: 18,
          color: Colors.white,
          fontFamily: 'Bold',
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                text: 'Our Contact Details',
                fontSize: 24,
                fontFamily: 'Bold',
              ),
              const Divider(),
              TextWidget(
                text: 'Email: socmed@gmail.com',
                fontSize: 18,
                fontFamily: 'Regular',
                color: Colors.grey,
              ),
              const SizedBox(
                height: 20,
              ),
              TextWidget(
                text: 'Phone Number: 09090104355',
                fontSize: 18,
                fontFamily: 'Regular',
                color: Colors.grey,
              ),
              const SizedBox(
                height: 20,
              ),
              TextWidget(
                text: 'Facebook Page: facebook.com/socmed',
                fontSize: 18,
                fontFamily: 'Regular',
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
