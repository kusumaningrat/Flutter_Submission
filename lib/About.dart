import 'package:flutter/material.dart';
import 'package:wisata_kebonayu/Navbar.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navbar(),
      appBar: AppBar(
        title: Text('History of Kebon Ayu'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.only(bottom: 13.0, left: 5.0),
                child: Text(
                  'Pada zaman dahulu, terdapat sebuah kerajaan yang ada di Desa Kebon Ayu. Pemimpin pada saat itu dikenal sangat baik dan ramah kepada warganya. Pada saat kepimpinan nya, Desa Kebon Ayu dikenal sebagai desa yang sangat bersih dan nyaman, karna pada saat pemerintahan tersebut sang raja meminta kepada warganya untuk menaruh sejenis pembersih untuk mencuci tangan di setiap rumah warga. Kebon Ayu juga memliki berbagai kegiatan adat dan budaya, seperti "Nyelametan Gumi" dimana acara tersebut dilakukan dengan tujuan dimulainya musim penanaman di Desa Kebon Ayu, Selain itu juga ada kegiata "Presean" dimana kegiatan ini dipercaya sebagai doa permintaan penurunan hujan dan masih banyak kegiatan yang lainnya. Kebunayu merupakan salah satu desa yang ada di kecamatan Gerung, kabupaten Lombok Barat, provinsi Nusa Tenggara Barat, Indonesia. Desa Kebunayu merupakan satu dari 11 desa dan kelurahan yang berada di kecamatan Gerung. Desa ini memiliki jumlah penduduknya sebagian besar bersuku daerah Lombok',
                  textAlign: TextAlign.justify,
                  maxLines: 200,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Raleway',
                  ),
                ),
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                              'assets/images/adat_budaya/gambelan.jpeg')),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                              'assets/images/adat_budaya/nyelametan_gumi.JPG')),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                              'assets/images/adat_budaya/nyelametan_gumi1.JPG')),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                              'assets/images/adat_budaya/presean.jpeg')),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                              'assets/images/adat_budaya/tenun.jpg')),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                              'assets/images/adat_budaya/cilokak.jpeg')),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
