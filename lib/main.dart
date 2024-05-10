import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Post Card',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PostCardPage(),
    );
  }
}

class PostCardPage extends StatefulWidget {
  @override
  _PostCardPageState createState() => _PostCardPageState();
}

class _PostCardPageState extends State<PostCardPage> {
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.black,
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            SizedBox(width: 16.0),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 8.0,
            color: Color.fromARGB(245, 245, 245, 245),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(14.0),
                  child: Container(
                    width: 387.0,
                    height: 443.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/miaceh.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Mie Aceh',
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.favorite,
                          color: isFavorite ? Colors.red : Colors.black,
                          size: 36,
                        ),
                        onPressed: toggleFavorite,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10.0),
                      Text(
                        'Mi Aceh adalah masakan mi pedas khas Aceh di Indonesia. Mi ini disajikan dengan menggunakan mi kuning tebal dengan irisan daging sapi, daging kambing atau seafood, seperti udang dan cumi. Lalu disajikan dalam sup sejenis kari yang gurih dan pedas. Mi aceh biasanya ditaburi dengan bawang goreng dan disajikan bersama emping, potongan bawang merah, mentimun, dan jeruk nipis.',
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(height: 20.0),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
