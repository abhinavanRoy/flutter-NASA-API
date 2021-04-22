import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Container(
        height: height,
        width: width,
        color: Colors.black54,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: height / 1.1,
              width: width / 2,
              child: Card(
                color: Colors.white12,
                elevation: 15,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "See the title here",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                        'https://images.immediate.co.uk/production/volatile/sites/4/2019/10/GettyImages-460712793-769fd3a.jpg?quality=90&resize=768,574',
                        height: 350,
                        width: 600,
                        fit: BoxFit.cover,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("No sudden, sharp boundary marks the passage of day into night in this gorgeous view of ocean and clouds over our fair planet Earth. Instead, the shadow line or terminator is diffuse and shows the gradual transition to darkness we experience as twilight. With the Sun illuminating the scene from the right, the cloud tops reflect gently reddened sunlight filtered through the dusty troposphere, the lowest layer of the planet's nurturing atmosphere. A clear high altitude layer, visible along the dayside's upper edge, scatters blue sunlight and fades into the blackness of space. This picture was taken in June of 2001 from the International Space Station orbiting at an altitude of 211 nautical miles. But you can check out the vital signs of Planet Earth Now.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
