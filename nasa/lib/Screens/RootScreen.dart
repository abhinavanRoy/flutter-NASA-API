

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:nasa/Screens/ResultScreen.dart';

class RootScreen extends StatefulWidget {
  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  CarouselController buttonCarouselController = CarouselController();
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
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Text(
                "WELCOME TO SPACE",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "This App will help you to see the Astronomy Picture of the day",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(_createRoute());
                },
                child: Text(
                  "See today's Picture",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              CarouselSlider(
                carouselController:buttonCarouselController,
                options: CarouselOptions(
                  viewportFraction: 0.9,
                  initialPage: 0,
                  height: 400.0,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 8),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                ),
                items: [0, 1, 2, 3, 4].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return myWidget[i];
                    },
                  );
                }).toList(),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () =>  buttonCarouselController.nextPage(
                    duration: Duration(milliseconds: 700), curve: Curves.easeInOutCubic),

                child: Text(
                  "Next",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  List<Widget> myWidget = [
    Container(
      width: 600,
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      child: Card(
          color: Colors.black45,
          elevation: 15,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network('https://images.immediate.co.uk/production/volatile/sites/4/2019/10/GettyImages-460712793-769fd3a.jpg?quality=90&resize=768,574',
                height: 200,
                  width: 300,
                ),
              ),

              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("The solar system is a bizarre place with its alien planets, mysterious moons and strange phenomena that are so out-of-this-world they elude explanation. Scientists have discovered ice-spewing volcanoes on Pluto, while Mars is home to a truly grand canyon the size of the United States. There may even be a giant, undiscovered planet lurking somewhere beyond Neptune. ",

                style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey,
                ),),
              ),
            ],
          )),
    ),
    Container(
      width: 600,
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      child: Card(
          color: Colors.black45,
          elevation: 15,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network('https://images.immediate.co.uk/production/volatile/sites/25/2020/05/should-we-send-a-spacecraft-to-explore-uranus-4ec2cb4.jpg?quality=90&resize=768,574',
                  height: 200,
                  width: 300,
                ),
              ),

              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Uranus appears to be a featureless blue ball upon first glance, but this gas giant of the outer solar system is pretty weird upon closer inspection. First, the planet rotates on its side for reasons scientists haven't quite figured out. The most likely explanation is that it underwent some sort of one or more titanic collisions in the ancient past. In any case, the tilt makes Uranus unique among the solar system planets.",

                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey,
                  ),),
              ),
            ],
          )),
    ),
    Container(
      width: 600,
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      child: Card(
          color: Colors.black45,
          elevation: 15,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network('https://solarsystem.nasa.gov/system/stellar_items/list_view_images/14_io_480x320_moons.jpg',
                  height: 200,
                  width: 300,
                ),
              ),

              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("For those of us used to Earth's relatively inactive moon, Io's chaotic landscape may come as a huge surprise. The Jovian moon has hundreds of volcanoes and is considered the most active moon in the solar system, sending plumes up to 250 miles into its atmosphere . Some spacecraft have caught the moon erupting; the Pluto-bound New Horizons craft caught a glimpse of Io bursting when it passed by in 2007.",

                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey,
                  ),),
              ),
            ],
          )),
    ),
    Container(
      width: 600,
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      child: Card(
          color: Colors.black45,
          elevation: 15,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network('https://images.theconversation.com/files/188620/original/file-20171003-18673-1bpti6e.png?ixlib=rb-1.1.0&q=45&auto=format&w=926&fit=clip',
                  height: 200,
                  width: 300,
                ),
              ),

              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("While Mars seems quiet now, we know that in the past something caused gigantic volcanoes to form and erupt. This includes Olympus Mons, the biggest volcano ever discovered in the solar system. At 374 miles (602 km) across, the volcano is comparable to the size of Arizona. It's 16 miles (25 kilometers) high, or triple the height of Mount Everest, the tallest mountain on Earth.",

                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey,
                  ),),
              ),
            ],
          )),
    ),
    Container(
      width: 600,
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      child: Card(
          color: Colors.black45,
          elevation: 15,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network('https://earthsky.org/upl/2019/09/Venus-dayside.png',
                  height: 200,
                  width: 300,
                ),
              ),

              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Venus is a hellish planet with a high-temperature, high-pressure environment on its surface. Ten of the Soviet Union's heavily shielded Venera spacecraft lasted only a few minutes on its surface when they landed there in the 1970s."

                  "But even above its surface, the planet has a bizarre environment. Scientists have found that its upper winds flow 50 times faster than the planet's rotation.",

                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey,
                  ),),
              ),
            ],
          )),
    ),




  ];
  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => ResultScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween =
        Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
