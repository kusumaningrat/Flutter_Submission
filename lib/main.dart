import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'Navbar.dart';

var informationTextStyle = TextStyle(fontFamily: 'Oxygen');

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Submission',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<String> imageList = [
    'assets/images/carousel/carousel1.jpeg',
    'assets/images/carousel/carousel2.jpg',
    'assets/images/carousel/carousel3.jpg',
    'assets/images/carousel/carousel4.jpg',
    'assets/images/carousel/carousel5.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    Widget image_slide_carousel = CarouselSlider(
        options: CarouselOptions(
          height: 180.0,
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          viewportFraction: 0.8,
        ),
        items: imageList
            .map((e) => Container(
                  margin: EdgeInsets.only(top: 5.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Image.asset(e,
                            width: 50, height: 150, fit: BoxFit.cover)
                      ],
                    ),
                  ),
                ))
            .toList());
    return Scaffold(
      drawer: Navbar(),
      appBar: AppBar(
        title: Text('Aplikasi Pariwisata'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset('assets/images/header/header.jpg'),
              Container(
                margin: EdgeInsets.only(top: 18.0, bottom: 5.0, left: 16.0),
                child: Text(
                  "Welcome to",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16.0, bottom: 20.0),
                child: Text(
                  "Desa Wisata Kebon Ayu",
                  style:
                      TextStyle(fontFamily: 'Roboto_Condensed', fontSize: 15.0),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.only(bottom: 13.0, left: 5.0),
                child: Text(
                  '''Kebunayu merupakan salah satu desa yang ada di kecamatan Gerung, kabupaten Lombok Barat, provinsi Nusa Tenggara Barat, Indonesia. Desa Kebunayu merupakan satu dari 11 desa dan kelurahan yang berada di kecamatan Gerung. Desa ini memiliki jumlah penduduknya sebagian besar bersuku daerah Lombok''',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Raleway',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16.0),
                padding: EdgeInsets.only(bottom: 10.0),
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.calendar_today),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          'Open Everyday',
                          style: informationTextStyle,
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.access_time),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          '09:00 - 20:00',
                          style: informationTextStyle,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.only(bottom: 13.0, left: 5.0, top: 13.0),
                child: Text(
                  'Mostly Visited',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              image_slide_carousel
            ],
          ),
        ),
      ),
    );
  }
}
