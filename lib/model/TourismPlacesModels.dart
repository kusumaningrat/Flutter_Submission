class TourismPlace {
  String name;
  String location;
  String description;
  String openDays;
  String openTime;
  String ticketPrice;
  String imageAsset;
  List<String> imageList;

  TourismPlace({
    required this.name,
    required this.location,
    required this.description,
    required this.openDays,
    required this.openTime,
    required this.ticketPrice,
    required this.imageAsset,
    required this.imageList,
  });
}

var tourismPlaceList = [
  TourismPlace(
    name: 'Wisata Tenun',
    location: 'Tenun',
    description:
        'Berada di setiap dusun yang ada di kebon ayu. Di Wisata Tenun para wisatawan dapat belajar cara membuat kain tenun.',
    openDays: 'Open Everyday',
    openTime: '09:00 - 20:00',
    ticketPrice: 'Rp. 50.000',
    imageAsset: 'assets/images/wisata_tenun/tenun2.jpeg',
    imageList: [
      'assets/images/wisata_tenun/tenun1.jpeg',
      'assets/images/wisata_tenun/tenun3.jpeg',
      'assets/images/wisata_tenun/tenun4.jpeg',
      'assets/images/wisata_tenun/tenun5.jpeg',
    ],
  ),
  TourismPlace(
    name: 'Wisata Golden Melon',
    location: 'Golden Melon',
    description:
        'Wisata Golden Melon terletak tepat disebalah kiri dari Wisata Kuliner. Golden Melon ini dapat di panen dalam dua (2) minggu sekali. Harga golden melon ini dari 50-100 ribu',
    openDays: 'Open Everyday',
    openTime: '09:00 - 20:00',
    ticketPrice: 'Rp 25.000',
    imageAsset: 'assets/images/golden_melon/golden5.jpeg',
    imageList: [
      'assets/images/golden_melon/golden1.jpg',
      'assets/images/golden_melon/golden2.jpg',
      'assets/images/golden_melon/golden3.jpeg',
      'assets/images/golden_melon/golden4.jpeg',
    ],
  ),
  TourismPlace(
    name: 'Wisata Bukit Bidadari',
    location: 'Bukit Bidadari',
    description:
        'Bukit Bidadari merupakan sebuah bukit yang terletak di Dusun Kelebut Desa Kebon Ayu. Bukit memiliki beberapa spot untuk berfoto. Selain itu, bukit ini dapat digunakan untuk camping ground.',
    openDays: 'Open Everyday',
    openTime: '09:00 - 20:00',
    ticketPrice: 'Rp 25000',
    imageAsset: 'assets/images/bukit_bidadari/bukit1.jpeg',
    imageList: [
      'assets/images/bukit_bidadari/bukit2.jpeg',
      'assets/images/bukit_bidadari/bukit3.jpeg',
      'assets/images/bukit_bidadari/bukit4.jpeg',
      'assets/images/bukit_bidadari/bukit5.jpeg',
    ],
  ),
  TourismPlace(
    name: 'Wisata Kuliner',
    location: 'Kuliner',
    description:
        'Wisata Kuliner merupakan salah satu tempat wisata yang paling sering dikunjungi. Di wisata kuliner tersebut para wisatawan akan menemukan makanan khas dari Kebon Ayu.',
    openDays: 'Open Everyday',
    openTime: '09:00 - 17:00',
    ticketPrice: 'Rp 25000',
    imageAsset: 'assets/images/kuliner/kuliner1.jpeg',
    imageList: [
      'assets/images/kuliner/kuliner1.jpeg',
      'assets/images/kuliner/kuliner2.jpeg',
      'assets/images/kuliner/kuliner3.jpeg',
      'assets/images/kuliner/kuliner4.jpeg',
    ],
  ),
];
