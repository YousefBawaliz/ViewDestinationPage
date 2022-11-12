import 'package:final_project_viewpage/Models/Destinations.dart';
import 'package:final_project_viewpage/Screens/LoadingScreen.dart';
import 'package:final_project_viewpage/Screens/ViewDestinationPage.dart';
import 'package:flutter/material.dart';

class testPage extends StatefulWidget {
  const testPage({super.key});

  @override
  State<testPage> createState() => _testPageState();
}

class _testPageState extends State<testPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => DestinationPage(
              //         siteName: "Jarash",
              //       ),
              //     ));

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoadingScreen(
                      siteName: "Petra",
                    );
                  },
                ),
              );
            },
            child: Text("Petra"),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {});
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoadingScreen(
                    siteName: "Aqaba",
                  ),
                ),
              );
            },
            child: Text("Aqaba"),
          ),
        ],
      ),
    );
  }
}
