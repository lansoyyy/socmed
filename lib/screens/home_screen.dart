import 'package:flutter/material.dart';
import 'package:socmed/utils/colors.dart';
import 'package:socmed/widgets/drawer_widget.dart';
import 'package:socmed/widgets/text_widget.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    getData();
  }

  List<dynamic> data = [];
  getData() async {
    // Specify the API URL
    String apiUrl = 'https://jsonplaceholder.typicode.com/posts';

    // Make the API call
    try {
      // Send GET request
      http.Response response = await http.get(Uri.parse(apiUrl));

      // Check if the request was successful (status code 200)
      if (response.statusCode == 200) {
        // Parse the JSON response
        data = json.decode(response.body);

        // Print the response data
        print('Response: $data');
      } else {
        // If the request was not successful, print the status code
        print('Error: ${response.statusCode}');
      }
    } catch (e) {
      // Handle exceptions
      print('Error: $e');
    }

    setState(() {
      hasLoaded = true;
    });
  }

  bool hasLoaded = false;

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
        body: hasLoaded
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 20, bottom: 10),
                    child: TextWidget(
                      text: 'Recent Posts',
                      fontSize: 18,
                      color: Colors.black,
                      fontFamily: 'Bold',
                    ),
                  ),
                  SizedBox(
                    height: 650,
                    child: ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Card(
                            child: SizedBox(
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    TextWidget(
                                      text: 'Title',
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontFamily: 'Bold',
                                    ),
                                    TextWidget(
                                      text: data[index]['title'],
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontFamily: 'Regular',
                                    ),
                                    const Divider(),
                                    TextWidget(
                                      text: 'Caption',
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontFamily: 'Bold',
                                    ),
                                    TextWidget(
                                      text: data[index]['body'],
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontFamily: 'Regular',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              )
            : const Center(
                child: CircularProgressIndicator(),
              ));
  }
}
