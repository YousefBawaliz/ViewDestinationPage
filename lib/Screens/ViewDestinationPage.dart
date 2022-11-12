import 'package:final_project_viewpage/Services/getWeather.dart';
import 'package:flutter/material.dart';
import 'package:final_project_viewpage/Models/Destinations.dart';

class DestinationPage extends StatefulWidget {
  final String siteName;
  final locationWeather;
  const DestinationPage(
      {super.key, required this.siteName, this.locationWeather});

  @override
  State<DestinationPage> createState() => _DestinationPageState();
}

class _DestinationPageState extends State<DestinationPage> {
  WeatherModel weather = WeatherModel();
  late double temp;
  late String weatherIcon;

  @override
  void initState() {
    super.initState();
    updateUi(widget.locationWeather);
  }

  void updateUi(dynamic weatherData) {
    if (weatherData == null) {
      temp = 0;
      weatherIcon = '';
      return;
    }
    setState(() {
      temp = weatherData['main']['temp'];
      var condition = weatherData['weather'][0]['id'];
      weatherIcon = weather.getWeatherIcon(condition);
    });
  }

  List<bool> expanded = [false, false, false, false];
  SiteStorage mysiteStorage = SiteStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // backgroundColor: Color.fromARGB(221, 68, 59, 59),
          ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: NetworkImage(
                        mysiteStorage.getSiteImage(siteName: widget.siteName)),
                  ),
                ),
              ),
            ),
            Container(
              height: 150,
              child: Container(
                margin: EdgeInsets.all(15),
                child: Center(
                  child: Text(
                    '${temp.toInt()}°',
                  ),
                ),
                // child: Text(
                //     mysiteStorage.getSiteDescription(siteName: widget.siteName)),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3),
              child: Column(
                children: [
                  ExpansionPanelList(
                      animationDuration: Duration(milliseconds: 500),
                      dividerColor: Colors.black87,
                      elevation: 1,
                      children: [
                        ExpansionPanel(
                          headerBuilder: (context, isExpanded) {
                            return Text("Points of interest");
                          },
                          body: Text(
                              " An inscription written by “Abdomanchos”, indicates that the tomb was to be used for himself and his family, probably in the reign of Malichus II (40- 70 AD)."),
                          isExpanded: expanded[0],
                        ),
                        ExpansionPanel(
                          headerBuilder: (context, isExpanded) {
                            return Text("Points of interest");
                          },
                          body: Text(
                              " An inscription written by “Abdomanchos”, indicates that the tomb was to be used for himself and his family, probably in the reign of Malichus II (40- 70 AD)."),
                          isExpanded: expanded[1],
                        ),
                        ExpansionPanel(
                          headerBuilder: (context, isExpanded) {
                            return Text("Points of interest");
                          },
                          body: Text(
                              " An inscription written by “Abdomanchos”, indicates that the tomb was to be used for himself and his family, probably in the reign of Malichus II (40- 70 AD)."),
                          isExpanded: expanded[2],
                        ),
                      ],
                      expansionCallback: (panelIndex, isExpanded) {
                        setState(() {
                          expanded[panelIndex] = !isExpanded;
                        });
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
