import 'package:flutter/material.dart';

class Food {
  final String imagePath;
  final String name;
  final String origin;

  Food(this.imagePath, this.name, this.origin);
}

class Matranesia extends StatelessWidget {
  Matranesia({super.key});

  final List<Food> foods = [
    Food('assets/1mieaceh.png', 'Mie Aceh', 'Aceh'),
    Food('assets/2bikaambon.png', 'Bika Ambon', 'Sumatera Utara'),
    Food('assets/3rendang.png', 'Rendang', 'Sumatera Barat'),
    Food('assets/4pendap.png', 'Pendap', 'Bengkulu'),
    Food('assets/5gulaibelacan.png', 'Gulai Balacan', 'Riau'),
    Food('assets/6pempek.png', 'Pempek', 'Sumatera Selatan'),
    Food('assets/7miebangka.png', 'Mie Bangka', 'Bangka Belitung'),
    Food('assets/8seruit.png', 'Seruit', 'Lampung'),
    Food('assets/9satebandeng.png', 'Sate Bandeng', 'Banten'),
    Food('assets/10keraktelor.png', 'Kerak Telor', 'DKI Jakarta'),
    // tambah makanan lain disini
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text(
            'Makanan Tradisional Indonesia',
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                fontSize: 24),
          ),
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: MediaQuery.of(context).size.width > 600 ? 3 : 2,
          childAspectRatio: 3 / 4,
        ),
        itemCount: foods.length,
        itemBuilder: (context, index) {
          return FoodCard(
            imagePath: foods[index].imagePath,
            name: foods[index].name,
            origin: foods[index].origin,
          );
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
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Card(
        color: Colors.white,
        elevation: 4.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
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
