import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../widgets/drawer_widget.dart';
import '../widgets/text_widget.dart';

class AboutusScreen extends StatelessWidget {
  const AboutusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        backgroundColor: primary,
        title: TextWidget(
          text: 'About Us',
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
                text: 'Who are we',
                fontSize: 32,
                fontFamily: 'Bold',
              ),
              const Divider(),
              TextWidget(
                text:
                    'Irure in enim sit velit adipisicing labore ut. Officia nulla adipisicing amet et ullamco anim voluptate nostrud culpa ullamco adipisicing proident. Consequat excepteur sunt aute do laboris voluptate labore aliquip dolor ea ea cillum deserunt culpa. Proident deserunt enim nostrud id sunt. Magna nostrud veniam enim nostrud magna qui non laborum qui qui incididunt. Consectetur qui ea irure occaecat eiusmod labore. Enim exercitation mollit excepteur enim nisi nostrud aliquip. Ut esse est pariatur sit adipisicing duis veniam consectetur laborum qui duis. Pariatur proident anim pariatur laborum elit. Velit laboris cillum non fugiat. Sint exercitation tempor deserunt ex exercitation quis sint laborum. Sunt excepteur aute sint tempor esse adipisicing est excepteur eu laboris ullamco consectetur. Est commodo cillum culpa nisi occaecat voluptate exercitation. Proident laborum amet velit ipsum fugiat anim aute Lorem sunt officia. Quis cupidatat adipisicing deserunt proident deserunt ut dolor nulla. Tempor amet non ut irure adipisicing officia. Ea excepteur id do minim cillum nostrud dolore enim. Nulla enim incididunt deserunt exercitation proident exercitation amet labore minim duis culpa officia adipisicing id. Magna cupidatat veniam pariatur dolor veniam proident est velit cillum eu. Veniam ad consectetur quis mollit. Sit ipsum pariatur aliqua aliqua labore dolore consequat cillum. Ex eiusmod nostrud minim cillum exercitation id nostrud labore exercitation mollit id velit ad. Nostrud exercitation laboris deserunt eiusmod ullamco est consectetur culpa.',
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
