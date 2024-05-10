import 'package:flutter/material.dart';
import 'package:makanan_tradisional_indonesia/detail_page.dart';

class Food {
  final String imagePath;
  final String name;
  final String origin;
  final String deskripsi;

  Food(this.imagePath, this.name, this.origin, this.deskripsi);
}

class Matranesia extends StatelessWidget {
  Matranesia({super.key});

  final List<Food> foods = [
    Food('assets/1mieaceh.png', 'Mie Aceh', 'Aceh',
        'Mi aceh adalah masakan mi pedas khas Aceh di Indonesia. Mi kuning tebal dengan irisan daging sapi, daging kambing atau makanan laut disajikan dalam sup sejenis kari yang gurih dan pedas. Mi aceh biasanya ditaburi dengan bawang goreng dan disajikan bersama emping, potongan bawang merah, mentimun, dan jeruk nipis.'),
    Food('assets/2bikaambon.png', 'Bika Ambon', 'Sumatera Utara',
        'Bika Ambon adalah kue tradisional khas Medan, Indonesia. Kue ini terbuat dari bahan-bahan seperti tepung tapioka, telur, gula, dan santan. Bika ambon dimasak selama 12 jam agar dapat bertahan dalam kondisi terbaik dan sesuai apa yang diinginkan selama empat hari karena setelahnya kue tersebut mulai mengeras.'),
    Food('assets/3rendang.png', 'Rendang', 'Sumatera Barat',
        'Rendang adalah hidangan berbahan dasar daging yang dihasilkan dari proses memasak suhu rendah dalam waktu lama dengan menggunakan aneka rempah-rempah dan santan. Proses memasaknya memakan waktu berjam-jam hingga yang tinggal hanyalah potongan daging berwarna hitam pekat dan dedak.'),
    Food('assets/4pendap.png', 'Pendap', 'Bengkulu',
        'Pendap, atau biasa juga disebut ikan pais, merupakan salah satu makanan khas di Provinsi Bengkulu. Pendap memiliki cita rasa pedas dan gurih, serta aroma khas daun talas yang menjadi pembungkusnya.'),
    Food('assets/5gulaibelacan.png', 'Gulai Balacan', 'Riau',
        'Gulai belacan adalah salah satu masakan khas dari Riau. Gulai ini dibuat dengan kuah campuran belacan atau terasi. Berbahan udang atau ikan, gulai belacan memiliki ciri khas tersendiri yang membuatnya berbeda dari jenis gulai lainnya.'),
    Food('assets/6pempek.png', 'Pempek', 'Sumatera Selatan',
        'Pempek, mpek-mpek, atau dalam bahasa Indonesia gaul empek-empek, adalah makanan khas Palembang, Sumatera Selatan. '),
    Food('assets/7miebangka.png', 'Mie Bangka', 'Bangka Belitung',
        'Mie Bangka atau dikenal sebagai Bakmi Bangka adalah salah hidangan tradisional masyarakat pulau Bangka. Mie bagi masyarakat Bangka dikenal sebagai mien, mian, merupakan pengaruh dari kuliner orang Hakka. '),
    Food('assets/8seruit.png', 'Seruit', 'Lampung',
        'Seruit adalah makanan khas daerah Lampung, Indonesia, yaitu masakan ikan yang digoreng atau dibakar dicampur sambal terasi, tempoyak atau mangga. Jenis ikan adalah besarnya ikan sungai seperti belide, baung, layis dll, ditambah lalapan. Lalu karena lampung dkat dengan laut bisa juga menggunakan jenis ikan-ikanan laut.'),
    Food('assets/9satebandeng.png', 'Sate Bandeng', 'Banten',
        'Sate Bandeng adalah masakan tradisional khas Banten, Indonesia. Sate Bandeng dibuat dari ikan bandeng yang dihilangkan durinya, dagingnya dibumbui dan dimasukkan kembali ke kulitnya, lalu ditusuk atau dijepit tusukan tangkai bambu, lalu dibakar di atas bara arang.'),
    Food('assets/10keraktelor.png', 'Kerak Telor', 'DKI Jakarta',
        'Kerak telur adalah makanan asli daerah Jakarta, dengan bahan-bahan beras ketan putih, telur ayam atau bebek, ebi, ditambah bawang merah goreng, lalu diberi bumbu yang dihaluskan berupa kelapa sangrai, cabai merah, kencur, jahe, kunyit, sereh halus, merica butiran, garam dan gula pasir. '),
    // tambah makanan lain disini
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Makanan Tradisional Indonesia',
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                fontSize: 24),
          ),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 4,
              ),
              itemCount: foods.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(food: foods[index]),
                      ),
                    );
                  },
                  child: FoodCard(
                    imagePath: foods[index].imagePath,
                    name: foods[index].name,
                    origin: foods[index].origin,
                  ),
                );
              },
            );
          } else if (constraints.maxWidth >= 300 &&
              constraints.maxWidth < 1200) {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 3 / 4,
              ),
              itemCount: foods.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(food: foods[index]),
                      ),
                    );
                  },
                  child: FoodCard(
                    imagePath: foods[index].imagePath,
                    name: foods[index].name,
                    origin: foods[index].origin,
                  ),
                );
              },
            );
          } else {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 6,
                childAspectRatio: 3 / 4,
              ),
              itemCount: foods.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(food: foods[index]),
                      ),
                    );
                  },
                  child: FoodCard(
                    imagePath: foods[index].imagePath,
                    name: foods[index].name,
                    origin: foods[index].origin,
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}

class FoodCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String origin;

  const FoodCard({
    super.key,
    required this.imagePath,
    required this.name,
    required this.origin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Card(
        color: Colors.white,
        elevation: 4.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(15.0),
                topLeft: Radius.circular(15.0),
                bottomLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
              ),
              child: Image.asset(imagePath, fit: BoxFit.cover, height: 130.0),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  fontSize: 20.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                origin,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w300,
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
