import 'package:flutter/material.dart';

class Homes extends StatefulWidget {
  @override
  _HomesState createState() => _HomesState();
}

class _HomesState extends State<Homes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 55.0,
        // hides leading widget
        title: Image.asset(
          'assets/logo.png',
          scale: 30.0,
        ),
        backgroundColor: Color(0xff68B0AB),
        elevation: 1.0,
        centerTitle: false,
        actions: <Widget>[
          Image.asset(
            'images/setting.png',
            scale: 1.6,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: <Widget>[
            Container(
              height: 190,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/banner01.png'),
                      fit: BoxFit.cover),
                  color: Colors.blue[800],
                  borderRadius: BorderRadius.circular(10)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Text(
                'Dikitabisa',
                style: TextStyle(color: Color(0xff68B0AB)),
              ),
            ),
            Text(
                'Dikitabisa merupakan platform jasa online yang memberikan solusi serta membantu mengerjakan tugas sekolah, tugas kuliah, ataupun tugas-tugas lainnya secara digital dengan proses pengerjaan yang cepat, simple, serta berkualitas. Mengedepankan kepuasaan klien dengan memberikan pelayanan terbaik serta hasil yang maksimal dan Insya Allah sesuai harapan.',
                textAlign: TextAlign.justify,
                style: TextStyle(color: Color(0xff68B0AB))),
            Row(
              children: <Widget>[
                Spacer(),
                FlatButton(
                  color: Color(0xff68B0AB),
                  child: Text(
                    'Daftar',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                InkWell(
                  onTap: () {},
                  child: HeaderItem(
                    images: 'images/goride.png',
                    title: 'GoRide',
                    textcolor: Colors.grey[600],
                  ),
                ),
                HeaderItem(
                  images: 'images/gocar.png',
                  title: 'GoCar',
                  textcolor: Colors.grey[600],
                ),
                HeaderItem(
                  images: 'images/gofood.png',
                  title: 'GoFood',
                  textcolor: Colors.grey[600],
                ),
                HeaderItem(
                  images: 'images/gobluebird.png',
                  title: 'GoBlueBird',
                  textcolor: Colors.grey[600],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                HeaderItem(
                  images: 'images/gosend.png',
                  title: 'GoSend',
                  textcolor: Colors.grey[600],
                ),
                HeaderItem(
                  images: 'images/godeals.png',
                  title: 'GoDeals',
                  textcolor: Colors.grey[600],
                ),
                HeaderItem(
                  images: 'images/gopulsa.png',
                  title: 'GoPulsa',
                  textcolor: Colors.grey[600],
                ),
                HeaderItem(
                  images: 'images/more-1.png',
                  title: 'MORE',
                  textcolor: Colors.grey[600],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 35,
              decoration: BoxDecoration(
                  color: Color(0xff548A86),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Daftar Layanan",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 80,
              decoration: BoxDecoration(
                  color: Color(0xff68B0AB),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8))),
              child: Container(
                padding: EdgeInsets.only(top: 15),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        onTap: () {},
                        child: HeaderItem(
                          images: 'images/website.png',
                          title: 'Website',
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: HeaderItem(
                          images: 'images/gmail.png',
                          title: 'Email',
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: HeaderItem(
                          images: 'images/instagram.png',
                          title: 'Instagram',
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: HeaderItem(
                          images: 'images/whatsapp.png',
                          title: 'Whatsapp',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HeaderItem extends StatelessWidget {
  const HeaderItem({Key key, this.images, this.title, this.textcolor})
      : super(key: key);
  final String images;
  final String title;
  final Color textcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      child: Column(
        children: <Widget>[
          Image.asset(
            images,
            scale: 3,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(color: textcolor ?? Colors.white),
          )
        ],
      ),
    );
  }
}
