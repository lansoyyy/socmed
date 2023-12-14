import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:socmed/screens/home_screen.dart';
import 'package:socmed/screens/login_screen.dart';
import 'package:socmed/widgets/text_widget.dart';

import '../utils/colors.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<DrawerWidget> {
  final box = GetStorage();
  // final Stream<DocumentSnapshot> userData =
  //     FirebaseFirestore.instance.collection('Users').doc(userId).snapshots();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220,
      child: Drawer(
        child: ListView(
          padding: const EdgeInsets.only(top: 0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: primary,
              ),
              accountEmail: TextWidget(
                  text: box.read('email'), fontSize: 12, color: Colors.white),
              accountName: TextWidget(
                text: box.read('name'),
                fontSize: 14,
                color: Colors.white,
              ),
              currentAccountPicture: const Padding(
                padding: EdgeInsets.all(5.0),
                child: CircleAvatar(
                  minRadius: 50,
                  maxRadius: 50,
                  backgroundImage: AssetImage('assets/images/profile.png'),
                ),
              ),
            ),
            ListTile(
              title: TextWidget(
                text: 'Home',
                fontSize: 12,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const HomeScreen()));
              },
            ),
            ListTile(
              title: TextWidget(
                text: 'About Us',
                fontSize: 12,
                color: Colors.black,
              ),
              onTap: () {
                // Navigator.of(context).pushReplacement(MaterialPageRoute(
                //     builder: (context) => const MainHomeScreen()));
              },
            ),
            ListTile(
              title: TextWidget(
                text: 'Contact Us',
                fontSize: 12,
                color: Colors.black,
              ),
              onTap: () {
                // Navigator.of(context).pushReplacement(MaterialPageRoute(
                //     builder: (context) => const MainHomeScreen()));
              },
            ),
            ListTile(
              title: TextWidget(
                text: 'About App',
                fontSize: 12,
                color: Colors.black,
              ),
              onTap: () {
                showAboutDialog(
                    context: context,
                    applicationName: 'SocMed',
                    applicationIcon: const Icon(
                      Icons.facebook,
                    ),
                    applicationVersion: 'v1.0.0');
              },
            ),
            ListTile(
              title: TextWidget(
                text: 'Logout',
                fontSize: 12,
                color: Colors.black,
              ),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: const Text(
                            'Logout Confirmation',
                            style: TextStyle(
                                fontFamily: 'QBold',
                                fontWeight: FontWeight.bold),
                          ),
                          content: const Text(
                            'Are you sure you want to Logout?',
                            style: TextStyle(fontFamily: 'QRegular'),
                          ),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () => Navigator.of(context).pop(true),
                              child: const Text(
                                'Close',
                                style: TextStyle(
                                    fontFamily: 'QRegular',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            MaterialButton(
                              onPressed: () async {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginScreen()));
                              },
                              child: const Text(
                                'Continue',
                                style: TextStyle(
                                    fontFamily: 'QRegular',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
