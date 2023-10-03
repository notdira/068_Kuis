import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'data_buku.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text('Perpustakaan')
          ),
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemCount: listBuku.length,
                itemBuilder: (context, index) {
                  final DataBuku dbook = listBuku[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => detail(dbook : dbook)));
                    },
                    child: Card(
                      child: SizedBox(
                        height: 500,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width /3 ,
                              child: Image(
                                image: NetworkImage(dbook.imageLink),
                                height: 300,
                                fit: BoxFit.fill,
                              ),
                            ),

                            Text(
                              dbook.author,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }
            )
        ),
      ),
    );
  }
}

class detail extends StatelessWidget {
  const detail({super.key, required this.dbook});
  final DataBuku dbook;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(dbook.author)
        ),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        actions: <Widget>[
          BookmarkButton(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              child: Image.network(dbook.imageLink),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Pengarang:',
                        style: TextStyle(
                          color: Colors.brown[900],
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Text(
                      dbook.author,
                      style: TextStyle(
                        color: Colors.purple[900],
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Negara:',
                        style: TextStyle(
                          color: Colors.brown[900],
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Text(
                      dbook.country,
                      style: TextStyle(
                        color: Colors.purple[900],
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Bahasa:',
                        style: TextStyle(
                          color: Colors.brown[900],
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Text(
                      dbook.language,
                      style: TextStyle(
                        color: Colors.purple[900],
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Jumlah Halaman:',
                        style: TextStyle(
                          color: Colors.brown[900],
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Text(
                      dbook.pages.toString(),
                      style: TextStyle(
                        color: Colors.purple[900],
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Tahun Terbit:',
                        style: TextStyle(
                          color: Colors.brown[900],
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Text(
                      dbook.year.toString(),
                      style: TextStyle(
                        color: Colors.purple[900],
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Judul Buku:',
                        style: TextStyle(
                          color: Colors.brown[900],
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Text(
                      dbook.title,
                      style: TextStyle(
                        color: Colors.purple[900],
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _launcher(dbook.link);
        },
        tooltip: 'Open Web',
        child: Icon(Icons.open_in_browser),
        backgroundColor: Colors.blueAccent,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
  Future<void> _launcher(String url) async{
    final Uri _url = Uri.parse(url);
    if(!await launchUrl(_url)){
      throw Exception("gagal membuka url : $_url");
    }
  }

}

class BookmarkButton extends StatefulWidget {
  @override
  _BookmarkButtonState createState() => _BookmarkButtonState();
}

class _BookmarkButtonState extends State<BookmarkButton> {
  bool _isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        _isBookmarked ? Icons.bookmark : Icons.bookmark_border,
        color: _isBookmarked ? Colors.white : null,
      ),
      onPressed: () {
        setState(() {
          _isBookmarked = !_isBookmarked;
        });
        // Show a snackbar indicating the bookmark state
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(_isBookmarked ? 'Berhasil menambahkan ke favorit.' : 'Berhasil menghapus dari favorit.'),
            backgroundColor : _isBookmarked ? Colors.lightGreen : Colors.red,
            duration: Duration(seconds: 1),
          ),
        );
      },
    );
  }
}